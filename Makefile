all: NHTS
clean: clean-figure clean-script

NHTS: R/NHTS.Rmd
	R -e 'library("knitr"); opts_knit$$set(root.dir = "./"); knit2html("./R/NHTS.Rmd","./html/NHTS.html")'
	rm -vf ./NHTS.md

TravelSurvey: R/TravelSurvey.Rmd
	R -e 'library("knitr"); opts_knit$$set(root.dir = "./"); knit2html("./R/TravelSurvey.Rmd","./html/TravelSurvey.html")'
	rm -vf ./TravelSurvey.md

clean-script:
	rm -rvf ./*.md

clean-figure:
	rm -rvf ./figure/

data:
	cd data; wget https://nhts.ornl.gov/assets/2016/download/Csv.zip
	cd data; unzip Csv.zip

.PHONY: data
