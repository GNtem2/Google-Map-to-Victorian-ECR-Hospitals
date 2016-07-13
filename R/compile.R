set.seed(0102)
options(htmlwidgets.TOJSON_ARGS = list(pretty = TRUE))
Sys.setenv(R_KNITR_OPTIONS = 'knitr.chunk.tidy = FALSE')
##knitr::opts_chunk$set(out.width = '100%')
library(leaflet)
f = rmarkdown::render(commandArgs(TRUE))
print(f)
## combine with the headers and footers
header <- readLines("_includes/before_body.html")
a <- readLines(f)
footer <- readLines("_includes/after_body.html")

a <- c(header, a)
writeLines(a, f)





