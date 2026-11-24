import requests
from html.parser import HTMLParser

class TagCollector(HTMLParser):

    def __init__(self):
        super().__init__()
        self.tags = []

    def handle_starttag(self, tag, attrs):
        # 'tag' is the lowercase tag name (e.g., 'a', 'div')
        # 'attrs' is a list of (name, value) tuples
        self.tags.append((tag, dict(attrs)))

#url = "http://security.debian.org"
url = "http://127.0.0.1:8000"
headers = {"User-Agent": "Mozilla/5.0"}
response = requests.get(url, headers=headers)
#print(response.text)
parser = TagCollector()
parser.feed(response.text)
parser.close()

for i in parser.tags:
	if i[0] == 'a':
		print(i)
