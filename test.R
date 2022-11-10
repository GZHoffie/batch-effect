# Libraries
library("splatter")
library("scater")
library("ggplot2")

# Parameters setting
params <- newSplatParams(nGenes = 1000)
sim1 <- splatSimulate(params, batchCells = c(100, 100),
                      batch.facLoc = 0.001, batch.facScale = 0.001,
                      verbose = FALSE)
sim1 <- logNormCounts(sim1)
sim1 <- runPCA(sim1)
plotPCA(sim1, colour_by = "Batch") + ggtitle("Small batch effects")
