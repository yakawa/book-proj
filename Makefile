all: pdf

PAGES = $(wildecard .re)
TEXTLINT = `npm bin`/textlint

pdf: config.yml catalog.yml $(PAGES)
	docker run --rm -v $(PWD):/work vvakame/review /bin/bash -c "cd /work; rake preproc; rake pdf"

clean:
	rm -rf book.pdf

lint:
	 $(TEXTLINT) -f pretty-error book-*.re
