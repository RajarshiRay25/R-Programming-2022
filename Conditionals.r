# if statements

val <- 12

if(val <= 23){
  print(paste("Value :",val))
}

# if else statements
# AND - &
# OR - |
# NOT - !

x <- 20
y <- 22

if((x < 10)& (y > 21)){
  print(paste("CONDITION WORKS",x,y))
}else{
  print(paste("NOT WORK"))
}

# While loop

count <- 1
while (count<20) {
  count<-count+1
  if (count %% 2 == 0) {
    count<-count+5
    print(count)
  }
}


for (i in 1:20) {
  if(i %% 2 == 0){
    print(i)
  }
  
}

# For loop

vecFor <- c(10,20,30,40,50,60,70)
for (cn in vecFor ) {
  print(paste("VALUE -> ",cn))
}


# Switch case

cityName <- function(city){
  cityList <- switch (toupper(city),
    KOL = 1000,
    MUM = 1500,
    PAT = 3000,
    LUC = 4000,
    7000
  )
  return(cityList)
}

cityName("KOL")
cityName("NAG")
