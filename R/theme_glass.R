#' A custom theme for ggplot2
#' @return A custom theme for ggplot2
#' @export
theme_glass <- function(){
  ggplot2::theme_gray() +
    ggplot2::theme(
      strip.background = element_blank(),
      strip.text = element_text(size = 11),
      #panel.border = element_rect(fill = NA, linewidth = 1),
      panel.border = element_blank(),
      # axis.line = element_blank(),
      axis.line = element_line(linewidth = 0.5, lineend = "square"),
      axis.ticks = element_line(color = "black", lineend = "butt"),
      axis.ticks.length = unit(0.2, "cm"),
      panel.background = element_rect(color = NA, fill = "grey96"),
      panel.grid = element_blank(),
      axis.text = element_text(color = "black"),
      plot.title = element_text(hjust = 0.5, size = 12)
    )
}