library(ggplot2)

create_figure <- function(data) {
  data |>
    ggplot(aes(
      x = region,
      y = mean_coverage
    )) +
    geom_col() +
    labs(
      title = "HPV Vaccination Coverage by U.S. Region",
      subtitle = "Adolescents ages 13–17, 2025",
      x = "Region",
      y = "Average HPV Vaccination Coverage (%)"
    ) +
    theme_minimal()
}

