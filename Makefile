# type "make" command in Unix to create tpavlic_cv_faculty.pdf file 

# NOTE: bibtex command should take the name of the .tex file 
# without the .tex extension. Inside the .tex file is the 
# command \bibliography{name} where name is the name of the 
# .bib file you want to compile.

TEX_NAME=resume-jaredwood

all:
	latex ${TEX_NAME}.tex
#	#bibtex ${TEX_NAME}
#	#latex ${TEX_NAME}.tex
#	#latex ${TEX_NAME}.tex
	dvips -t letter -o ${TEX_NAME}.ps ${TEX_NAME}.dvi
	ps2pdf ${TEX_NAME}.ps ${TEX_NAME}.pdf

short:
	latex ${TEX_NAME}-short.tex
	dvips -t letter -o ${TEX_NAME}-short.ps ${TEX_NAME}-short.dvi
	ps2pdf ${TEX_NAME}-short.ps ${TEX_NAME}-short.pdf

clean:
	(rm -rf ${TEX_NAME}.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.out)
