rq-pywaw.pdf: rq-pywaw.latex styles.tex starting.tex queueing1.tex queueing2.tex dashboard.tex metadata.tex pikachu.jpeg prequest.tex getresult.tex pokemon.tex
	pdflatex rq-pywaw.latex
styles.tex: Makefile
	pygmentize -S manni -f latex > styles.tex
starting.tex: starting.sh Makefile
	pygmentize -l console -o starting.tex starting.sh
queueing1.tex: queueing1.py Makefile
	pygmentize -l py -o queueing1.tex queueing1.py
queueing2.tex: queueing2.py Makefile
	pygmentize -l py -o queueing2.tex queueing2.py
dashboard.tex: dashboard.sh Makefile
	pygmentize -l console -o dashboard.tex dashboard.sh
metadata.tex: metadata.py Makefile
	pygmentize -l py -o metadata.tex metadata.py
prequest.tex: prequest.py Makefile
	pygmentize -l py -o prequest.tex prequest.py
getresult.tex: getresult.py Makefile
	pygmentize -l py -o getresult.tex getresult.py
pokemon.tex: pokemon.py Makefile
	pygmentize -l py -o pokemon.tex pokemon.py
resultgen.tex: resultgen.py Makefile
	pygmentize -l py -o resultgen.tex resultgen.py
responsegen.tex: responsegen.py Makefile
	pygmentize -l py -o responsegen.tex responsegen.py
