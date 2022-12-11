# DATAFRAMES

## create vectors and form dataframe

progLang <- c("C","Python","JavaScript","R","SQL")
accuracy <- c(75,90,65,40,35)
semester <- c(2,2,4,5,6)

dataFrame <- data.frame(progLang,accuracy,semester)
dataFrame

## access data values

dataFrame$progLang   # using $ to access
dataFrame[["accuracy"]] # using list

dataFrame[3,2]    # row-3 col-2 value

## add data column

year <- c(2021,2021,2022,2022,2023)
dataFrame$year <- year
dataFrame

stream <- c("Common","Common","BT","BT","BT")
dataFrame[["stream"]] <- stream
dataFrame


## add a new entry to existing row

newUpdate <- c("C++",30,7,2023,"BT")
rbind(dataFrame,newUpdate)


## sort  - sort()

dataSet_rank <- sort(dataFrame$accuracy)
dataSet_rank

## order - order()  - orders dataset

dataSet_rank <- order(dataFrame$accuracy)
dataSet_rank
dataFrame[dataSet_rank,]

dataSet_rank <- order(dataFrame$accuracy,decreasing = TRUE)  ## descending order
dataSet_rank
dataFrame[dataSet_rank,]

## Sequence - seq()

dnaSeq <- seq("A","T","G","C")
dnaSeq

oddNo <- seq(1,20,2)
oddNo

