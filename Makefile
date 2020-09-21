# Rule
# target : prerequisite1 prerequisite2 prerequisite3
# (tab)recipe


README.md : README.rmd
	R -e "library(rmarkdown); render('README.rmd')"