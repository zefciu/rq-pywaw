rq-pywaw.pdf: rq-pywaw.latex styles.tex starting.tex queueing1.tex queueing2.tex
	latex -output-format=pdf rq-pywaw.latex
styles.tex: Makefile
	pygmentize -S manni -f latex > styles.tex
starting.tex: starting.sh Makefile
	pygmentize -l console -o starting.tex starting.sh
queueing1.tex: queueing1.py Makefile
	pygmentize -l console -o queueing1.tex queueing1.py
queueing2.tex: queueing2.py Makefile
	pygmentize -l console -o queueing2.tex queueing2.py
