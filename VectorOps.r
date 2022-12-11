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
