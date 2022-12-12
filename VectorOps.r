# Labels and Values

temperature <- c(40,50,60,70,80)
days <- c("M","T","W","Th","F")
names(temperature) <- days
temperature


# Operations on vector

vec_1 <- c(1,2,3,4,5,6)
vec_2 <- c(4,5,6,7,8,9)

vec_1 + vec_2
vec_1 - vec_2
vec_1 / vec_2
vec_1 * vec_2

max(vec_1)
min(vec_1)
sd(vec_1)

# Dealing with NA values

markets <- c(2010,2011,2012,NA,2014,2015)
markets[markets<2013]   # conditional

# omit NA values 

na.omit(markets[markets<2013])
markets

sum(markets,na.rm = TRUE)
mean(markets,na.rm = TRUE)
max(markets,na.rm = TRUE)


help(dimnames)


# Work with matrix datasets

marksDb <- matrix(c(30,40,50,NA,60,70,NA,80,90,100,110,120,130,140,150,160),nrow = 4,ncol = 4,byrow = TRUE)
marksDb

dimnames(marksDb) <- list(c("A","B","C","D"), c("CP","Py","JS","R"))
marksDb


# [row,col]

## rows access

marksDb[2,]
marksDb[3,]
marksDb[1:3,]

marksDb[c(1,2),]

## col access 

marksDb[,2]
marksDb[,2:4]


# further operations

marksDb

# Py marks of B and C

marksDb[c(2:3),2]

marksDb[c("B","C"),2]

# marks of D in Py and R

marksDb["D",c("Py","R")]


# apply()

marksDb

apply(marksDb,1,sum,na.rm=TRUE)

## Check cutoff

cutoff <- c(25,35,55,60)

qualify <- (marksDb[c("A"),] >= cutoff)
qualify


## DATASET 

help(data)   ## defintion 

data(mtcars)  # load

View(mtcars)  # view dataset
  
str(mtcars)   # structural info

summary(mtcars) # summary

subset(mtcars,mtcars$mpg < 22.8)   # views dataset only at subset level


