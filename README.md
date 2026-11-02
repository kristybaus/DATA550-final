# DATA550-final

# HPV Vaccination Coverage Among U.S. Adolescents

## Project Overview

This project examines HPV vaccination coverage among adolescents ages 13–17 across U.S. geographic regions in 2025.

Data are from the CDC National Immunization Survey-Teen (NIS-Teen).

## Repository Contents

- `data/vaccination.csv`: CDC vaccination dataset
- `code/clean_data.R`: Loads and prepares the data
- `code/table.R`: Creates the formatted table
- `code/figure.R`: Creates the figure
- `report.Rmd`: R Markdown report
- `Makefile`: Builds the final report

## Generating the Report

1. Download or clone this repository.
2. Open the project directory in RStudio.
3. Install the required R packages:

   ```r
   install.packages(c("tidyverse", "gt", "rmarkdown", "here"))
   ```

4. Run `make` in the Terminal.

Alternatively, open `report.Rmd` in RStudio and click Knit.

The final output is `report.html`.

## Table and Figure

**Table 1:** Created using `code/table.R`. It displays average state-level HPV vaccination coverage by U.S. region.

**Figure 1:** Created using `code/figure.R`. It compares average state-level HPV vaccination coverage across regions using a bar chart.

## Data Source

CDC Vaccination Coverage among Adolescents (13–17 Years):
https://data.cdc.gov/d/ee48-w5t6
