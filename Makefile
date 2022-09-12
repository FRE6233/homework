MD = $(wildcard [a-z]*.md)
HTML = $(MD:.md=.html)
PDF = $(MD:.md=.pdf)
FLAGS = -s --katex --metadata="title=$*" -M classoption=fleqn

%.html: %.md 
	pandoc $(FLAGS) $< -o $@

%.pdf: %.md 
	pandoc $(TEXFLAGS) $< -o $@

all: $(HTML)

.PHONY: clean
clean:
	rm -f $(HTML)
	rm -f $(PDF)
