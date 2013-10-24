library(knitr)
options(knitr.width=60)
render_markdown()
inline.hook.xspace <- function(...) { paste0(knitr:::.inline.hook.tex(...), '\\xspace') }
knit_hooks$set(inline=inline.hook.xspace)
setwd("spin")
spin(file.path("..", commandArgs(TRUE)), report=F)
