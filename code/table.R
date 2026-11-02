library(gt)

create_table <- function(data) {
  data |>
    gt() |>
    cols_label(
      region = "Region",
      mean_coverage = "Average HPV Vaccination Coverage (%)"
    ) |>
    fmt_number(
      columns = mean_coverage,
      decimals = 1
    )
}
