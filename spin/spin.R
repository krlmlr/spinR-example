library(knitr)
options(knitr.width=60)
render_markdown()
inline.hook.xspace <- function(...) { paste0(knitr:::.inline.hook.tex(...), '\\xspace') }
knit_hooks$set(inline=inline.hook.xspace)
opts_knit$set(concordance=TRUE)
setwd("spin")
spin(file.path("..", commandArgs(TRUE)), report=F, precious=T)
