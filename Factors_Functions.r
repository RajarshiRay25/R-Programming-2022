# Factors

bloodGroup <- c("A","B","AB","O")
bloodGroup

## ordinates the data and creates positioning and ranking for order study
bgFactor <- factor(bloodGroup)
bgFactor

bgFactor <- factor(bloodGroup,ordered = TRUE)   # comparitive return
bgFactor

## Set labels
bgFactor <- factor(bloodGroup,labels =c("IaIa","IbIb","IaIb","IoIo"),ordered = TRUE)
bgFactor

## Set levels as desired positioning

bgFactor <- factor(bloodGroup,labels =c("IaIa","IbIb","IaIb","IoIo"),ordered = TRUE,levels = c("A","B","AB","O"))
bgFactor


# Inbuilt Functions

## sequence - sequence make - seq()

mySeq <- seq(4,40,by=2)
mySeq

## sort 

vec <- c(1,2,3,4,5,6,7,8,9)
sort(vec,decreasing = TRUE)

## Reverse

rev(vec)


## Global Regular Expression Print

grep(3,vec)   # return index
grepl(100,vec)  # check if value present in vector or not - return TRUE or FALSE
