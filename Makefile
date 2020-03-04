booklet:
	pdflatex -output-directory bin/ booklet.tex

booklet6:
	pdflatex -output-directory bin/ booklet-a6.tex

bookletd:
	@rm -f bin/input.pdf
	@cp ~/Desktop/input.pdf bin/input.pdf
	@make booklet
	@open ./bin/
	@open ./bin/booklet.pdf

bookletc:
	@rm -f bin/input.pdf
	@cp ~/Desktop/input.pdf bin/input.pdf
	@make add_back_cover
	@rm -f bin/input.pdf
	@mv bin/concat.pdf bin/input.pdf
	@make booklet
	@open ./bin/
	@open ./bin/booklet.pdf

bookletd6:
	@rm -f bin/input.pdf
	@cp ~/Desktop/input.pdf bin/input.pdf
	@make booklet6
	@open ./bin/
	@open ./bin/booklet-a6.pdf

add_back_cover:
	pdflatex -output-directory bin/ concat.tex
