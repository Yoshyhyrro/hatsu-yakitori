import re
import os
import sys
from googletrans import Translator

README = "README.md"
LANGS = [
    ("ja", "README.ja.md"),
    ("zh-tw", "README.zh-TW.md"),
    ("zh-hk", "README.zh-HK.md"),
    ("ru", "README.ru.md"),
    ("cs", "README.cs.md"),
    ("de", "README.de.md"),
    ("es", "README.es.md"),
]

def split_fenced(text):
    return re.split(r'(```[\s\S]*?```)', text)

def translate_paragraphs(text, translator, dest):
    parts = text.split("\n\n")
    translated = []
    for p in parts:
        if not p.strip():
            translated.append(p)
            continue
        try:
            t = translator.translate(p, dest=dest).text
        except Exception:
            t = p
        translated.append(t)
    return "\n\n".join(translated)

def translate_for_lang(src, translator, dest):
    segments = split_fenced(src)
    out_segments = []
    for seg in segments:
        if seg.startswith("```"):
            out_segments.append(seg)
        else:
            out_segments.append(translate_paragraphs(seg, translator, dest))
    return "".join(out_segments)

def main():
    if not os.path.exists(README):
        print(f"{README} not found.", file=sys.stderr)
        sys.exit(1)

    with open(README, "r", encoding="utf-8") as f:
        src = f.read()

    translator = Translator()

    for code, outname in LANGS:
        out_text = translate_for_lang(src, translator, code)

        # Only write if changed
        if os.path.exists(outname):
            with open(outname, "r", encoding="utf-8") as f:
                if f.read() == out_text:
                    print(f"No changes for {outname}.")
                    continue

        with open(outname, "w", encoding="utf-8") as f:
            f.write(out_text)
        print(f"Wrote {outname}")

if __name__ == "__main__":
    main()