MD = $(wildcard [a-z]*.md)
HTML = $(MD:.md=.html)
FLAGS = -s --katex --metadata="title=$*"

%.html: %.md $(CSS)
	pandoc $(FLAGS) $< -o $@

%.pdf: %.md $(CSS)
	pandoc $(TEXFLAGS) $< -o $@

all: $(HTML)

.PHONY: clean
clean:
	rm $(HTML)
