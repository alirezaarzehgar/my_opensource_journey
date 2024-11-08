MAIN := diary.tex

all: out
	xelatex -shell-escape -output-directory=out/ ${MAIN}
	xelatex -shell-escape -output-directory=out/ ${MAIN}

out:
	mkdir -p out

view:
	evince out/*.pdf

clean:
	rm -rf out

