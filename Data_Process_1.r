# Print
num_1 <- 23
num_2 <- 23
print(num_1+num_2)

# Type 
class(num_1)

# String

wish <- "Good Morning"
print(wish)

class(wish)
typeof(wish)

# Complex Number

com <- 1+4i
class(com)

# vectors -c()

vec_1 <- c(1,2,3,4,5,6)
length(vec_1)
class(vec_1)
typeof(vec_1)

vec_2 <- c(1L,2L,3L,4L)
length(vec_2)
class(vec_2)
typeof(vec_2)

# as statement

vec_test <- c(1,2,3,4,5)
as.numeric(vec_test)
as.character(vec_test)
as.complex(vec_test)

vec_char <- c("a","b","c")
as.numeric(vec_char)
as.character(vec_char)
as.complex(vec_char)


# Lists 

list_1 <- list("R Lang","2022","6")
names(list_1) <-list("Programming Language","Year","Semester") 
list_1

list_1$`Programming Language`  # access elements

# Matrix

matrix_1 <- matrix(1:4,nrow = 2)
matrix_1

matrix_2 <- matrix(1:6,byrow = TRUE,nrow = 2)  # Set values by row
matrix_2

matrix_3 <- matrix(1:6,ncol = 2)
matrix_3

# Merge row wise

rbind(1:4,5:8)

# Merge col wise

cbind(1:4,5:8)

# merge defined matrix with given

matrix_bind <- matrix(7:10, nrow = 1,byrow = TRUE)
matrix_bind

rbind(matrix_bind,5:8,1:4)

# Matrix with letters

matrix_letter <-  matrix(LETTERS[1:6],nrow = 2)
matrix_letter

matrix_ind <- matrix(1:6,nrow = 2)
matrix_ind

cbind(matrix_ind,matrix_letter)
