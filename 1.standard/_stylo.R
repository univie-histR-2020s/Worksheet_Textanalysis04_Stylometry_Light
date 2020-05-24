#install.packages("rstudioapi")
library(rstudioapi)
current_path <- getActiveDocumentContext()$path 
setwd(dirname(current_path))
print(getwd())

#install.packages("stylo")
library(stylo)

# this opens a graphic interface, where parameters are selected with mouse clicks in relevant windows
stylo()

# alternatively, to run silently:

stylo(
  gui=FALSE,
  corpus.format = "plain",
  corpus.lang = "English",
  analyzed.features = "w",
  ngram.size = 1,
  preserve.case = FALSE,
  encoding = "UTF-8",
  mfw.min = 100,
  mfw.max = 500,
  mfw.incr = 100,
  start.at = 1,
  culling.min = 10,
  culling.max = 60,
  culling.incr = 20,
  mfw.list.cutoff = 5000,
  delete.pronouns = FALSE,
  use.existing.freq.tables = FALSE,
  use.existing.wordlist = FALSE,
  use.custom.list.of.files = FALSE,
  analysis.type = "BCT",
  consensus.strength = 0.5,
  sampling = "no.sampling",
  sample.size = 10000,
  number.of.samples = 1,
  display.on.screen = TRUE,
  write.pdf.file = TRUE,
  write.jpg.file = TRUE,
  write.svg.file = TRUE,
  write.png.file = TRUE,
  plot.custom.height = 15,
  plot.custom.width = 15,
  plot.font.size = 10,
  plot.line.thickness = 2,
  text.id.on.graphs = "both",
  colors.on.graphs = "colors",
  titles.on.graphs = TRUE,
  label.offset = 3,
  add.to.margins = 2,
  dendrogram.layout.horizontal = TRUE,
  pca.visual.flavour = "classic",
  save.distance.tables = FALSE,
  save.analyzed.features = FALSE,
  save.analyzed.freqs = FALSE,
  dump.samples = FALSE
)
