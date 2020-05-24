#install.packages("rstudioapi")
library(rstudioapi)
current_path <- getActiveDocumentContext()$path 
setwd(dirname(current_path))
print(getwd())

#install.packages("stylo")
library(stylo)

# no giu for rolling.delta()

# fig. 1
rolling.classify(write.png.file = TRUE,
                 classification.method = "svm",
                 mfw=100,
                 training.set.sampling = "normal.sampling",
                 slice.size = 5000,
                 slice.overlap = 4500) 

#The vertical dashed line that divides the part by Guillaume de Lorris and Jean de Meun is produced by adding the word “xmilestone” into the input text, after the line 4,058. One can add as many milestones as needed; they will be reproduced in the final plot and labelled automatically using lowercase roman letters. 

# Fig. 2
rolling.classify(write.png.file = TRUE,
                 classification.method = "nsc",
                 mfw=50,
                 training.set.sampling = "normal.sampling",
                 slice.size = 5000, slice.overlap = 4500) 

# Fig. 3
rolling.classify(write.png.file = TRUE,
                 classification.method = "delta",
                 mfw=1000) 

# Fig. 4
rolling.classify(write.png.file = TRUE,
                 classification.method = "delta",
                 mfw=500) 
