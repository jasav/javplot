# From : https://stackoverflow.com/questions/10504724/change-the-default-colour-palette-in-ggplot
custom.colors <- function(n) {
  palette <- c("#348fd9", "#e6576d", "#a869f5", "#62d298",
               "#ff7936", "#f0da16", "#b5223f", "#03fcb1",
               "#35bfe6", "#f0da16", "#9ddb67", "#457996",
               "darkslategray3", "lightgreen", "bisque",
               "palevioletred1", "black", "gray79", "lightsalmon4",
               "darkgoldenrod1")
  if (n > length(palette))
    warning('palette has duplicated colours')
  rep(palette, length.out=n)
}

scale_custom <- function(aesthetics, ..., palette = custom.colors){ggplot2::discrete_scale(aesthetics = aesthetics, ..., palette = palette)}
scale_colour_custom <- function(...) ggplot2::scale_custom("colour", ...)
options(ggplot2.discrete.colour = scale_colour_custom)

customcolors <- list(
  blue = "#348fd9",
  red = "#e6576d",
  lightblue = "#d1e0ed",
  darkred = "#b5223f",
  green = "#62d298",
  purple = "#a869f5",
  orange = "#ff7936"
)
use_data(customcolors)
