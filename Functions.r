# Functions - 1 -- Welcome

greet <- function(wish){
  
 message("Hello "," ",wish)
}
greet("User")

# Functions - 2 -- Add/Subt/Div/Multi

math <- function(a,b){
  
  sum <- a+b
  diff <- a-b
  div <- a/b
  mul <- a*b
  
  message("ADDITION : "," ",sum)
  message("SUBTRACTION : "," ",diff)
  message("DIVISION : "," ",div)
  message("MULTIPLICATION : "," ",mul)
}

math(10,20)

# Functions - 3 -- Square and Squareroot within range of numbers

numRange <- function(numIn,numOut){
  for (cn in numIn:numOut) {
    numSquare <- cn*cn
    numSqrRoot <- sqrt(cn)
    
    message("NUMBER : ",cn,"---","SQUARE : ",numSquare)
    message("NUMBER : ",cn,"---","SQUARE-ROOT : ",numSqrRoot)
  }
  
}

numRange(11,22)

# Functions - 4 -- Traversing a vector -c()

vecTest <- c(1,2,3,4,5,6,7,8,9,0)

vecFunc <- function(vector){
  
  for (cn in vecTest) {
    print(cn)
  }
}

vecFunc(vecTest)

# Functions - 5 -- Simple Interest

funcSI <- function(principal,rate,time){
  
  SI <- (principal*rate*time)/100
  message("SIMPLE INTEREST : ",SI)
}

funcSI(1000,2,3)

# Function - 6 -- Factorial -- Recursion

funcFact <- function(num){
  if(num == 0){
    return(1)
  }else{
    return(num * funcFact(num-1))
  }
}

funcFact(5)
