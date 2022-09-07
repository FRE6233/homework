MD = $(wildcard [a-z]*.md)
HTML = $(MD:.md=.html)
HTML = $(MD:.md=.pdf)
FLAGS = -s --katex --metadata="title=$*"

%.html: %.md $(CSS)
	pandoc $(FLAGS) $< -o $@

%.pdf: %.md 
	pandoc $(TEXFLAGS) $< -o $@

all: $(HTML)

.PHONY: clean
clean:
	rm $(HTML)
	rm $(PDF)
