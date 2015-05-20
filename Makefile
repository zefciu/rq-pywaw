rq-pywaw.pdf: rq-pywaw.latex styles.tex starting.tex
	latex -output-format=pdf rq-pywaw.latex
styles.tex: Makefile
	pygmentize -S manni -f latex > styles.tex
starting.tex: starting.sh Makefile
	pygmentize -l console -o starting.tex starting.sh
