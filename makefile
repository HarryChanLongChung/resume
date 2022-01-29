all: resume.pdf

.PHONY: clean
clean:
	mv resume.tex temp.tex
	rm -f resume.* 
	mv temp.tex resume.tex

resume.pdf:
	xelatex -shell-escape resume.tex