#!/usr/bin/env python3
import glob,re,sys,os
repo_root = os.path.dirname(os.path.dirname(__file__))
files = sorted(glob.glob(os.path.join(repo_root, '**/*.lean'), recursive=True))
# map module names from paths under lean4/
mod_to_file = {}
for f in files:
    p = f.replace('\\', '/')
    if 'lean4/' in p:
        idx = p.rfind('lean4/')
        name = p[idx+6:-5]  # after 'lean4/' remove '.lean'
        name = name.replace('/', '.')
        mod_to_file[name] = f
# parse imports
imp = {}
for f in files:
    imp[f] = []
    with open(f, 'r', encoding='utf-8') as fh:
        for line in fh:
            m = re.match(r"\s*import\s+(.+)", line)
            if m:
                parts = m.group(1).strip().split()
                for part in parts:
                    if part.startswith('HatsuYakitori'):
                        imp[f].append(part)
# resolve to file paths
edges = {}
for f, mods in imp.items():
    edges[f] = []
    for m in mods:
        if m in mod_to_file:
            edges[f].append(mod_to_file[m])
# detect cycles via DFS
visited = set(); stack = set(); cycles = []

def dfs(u, anc):
    visited.add(u); stack.add(u)
    for v in edges.get(u, []):
        if v not in visited:
            dfs(v, anc + [v])
        elif v in stack:
            # record cycle path
            try:
                i = anc.index(v)
                cycles.append(anc[i:] + [v])
            except ValueError:
                cycles.append(anc + [v])
    stack.remove(u)

for u in edges:
    if u not in visited:
        dfs(u, [u])

if cycles:
    print('CYCLES FOUND:')
    for c in cycles:
        print(' -> '.join(c))
else:
    print('No cycles found among project-local HatsuYakitori imports.')

# list which files import AbstractFrontier
for f,mods in imp.items():
    if 'HatsuYakitori.AbstractFrontier' in mods:
        print('Imports AbstractFrontier:', os.path.relpath(f, repo_root))
