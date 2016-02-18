all: build

build: index.md
	jekyll build

index.md:
	ipython nbconvert --execute --to=markdown --template="nb-markdown.tpl" index.ipynb
