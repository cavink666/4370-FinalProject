# Import data set
library(readxl)
DataFile <- read_excel("~/School/USF/Spring23/LIS4370/Final/DataFile.xlsx",
                       col_types = c("numeric", "numeric"))
View(DataFile)

# trying different code with the data set
# created a smaller sample "subset"
length(DataFile$Acres)
unique(DataFile$Cost)
DataFile[1:20, 1:2]
subset <- DataFile[1:20, 1:2]

# create a function of choice
cost_acre <- function(Acres, Cost){
  estimate <- Cost / Acres
  return(estimate)
}

cost_acre(50.41,149900)
cost_acre(55,330000)
