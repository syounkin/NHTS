all: NHTS
clean: clean-figure clean-script

NHTS: R/NHTS.Rmd
	R -e 'library("knitr"); opts_knit$$set(root.dir = "./"); knit2html("./R/NHTS.Rmd","./html/NHTS.html")'
	rm -vf ./NHTS.md
	cp -v ./html/NHTS.html ~/google/HOT/analysis/NHTS/

clean-script:
	rm -rvf ./*.md

clean-figure:
	rm -rvf ./figure/

