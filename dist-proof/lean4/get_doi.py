import urllib.request, json
url = 'https://api.crossref.org/works/10.1007/JHEP09(2022)202'
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
try:
    data = json.loads(urllib.request.urlopen(req).read().decode('utf-8'))
    msg = data['message']
    print(f"Title: {msg.get('title', [''])[0]}")
    print(f"Authors: {[a.get('family', '') for a in msg.get('author', [])]}")
    print(f"Abstract: {msg.get('abstract', '')}")
except Exception as e:
    print(e)
