library(tidyverse)
library(gtsummary)
library(gt)
library(here)

vaccination <- read_csv("https://data.cdc.gov/api/v3/views/ee48-w5t6/export.csv?accessType=DOWNLOAD"
)

hpv_data <- vaccination |>
  filter(
    `Vaccine/Sample` == "HPV",
    Dose == "≥1 Dose, Males and Females",
    `Survey Year` == "2025",
    `Geography Type` == "States/Local Areas",
    Geography %in% state.name
  ) |>
  mutate(
    coverage = as.numeric(`Estimate (%)`),
    region = state.region[match(Geography, state.name)]
  ) 

region_summary <- hpv_data |>
  group_by(region) |>
  summarise(
    mean_coverage = mean(coverage, na.rm = TRUE)
  )

dir.create(here("output"), showWarnings = FALSE)

saveRDS(
  region_summary,
  file = here("output", "region_summary.rds")
)
