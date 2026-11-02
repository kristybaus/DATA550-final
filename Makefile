report.html: report.Rmd code/table.R code/figure.R output/region_summary.rds
	Rscript -e "rmarkdown::render('report.Rmd')"

output/region_summary.rds: code/clean_data.R data/vaccination.csv
	Rscript code/clean_data.R
	
.PHONY: clean 
clean:
	rm -f output/* .rds
	