FILE=slides.tex

.PHONY: all clean slides latexmk

all: slides clean

clean:
	$(RM) *.{aux,blg,snm,nav,log,out,bbl,toc,fls,fdb_latexmk}
	$(RM) sections/*.aux

slides:
	rubber -d $(FILE)

latexmk: $(FILE)
	latexmk -time -pvc -pdf -new-viewer- -view=pdf -recorder $<
