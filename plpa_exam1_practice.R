#### Vectors ####
# Create a numeric vector
x <- c(10, 20, 30, 40)

# Access the first element (indexing starts at 1 in R)
x[1]

# Access multiple elements (2nd and 4th)
x[c(2, 4)]

# Logical indexing (values greater than 20)
x[x > 20]

# Add an element to the end of the vector
x <- c(x, 50)

# View updated vector
x

#### Matrices ####
# Create a 2x2 matrix
m <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

# Name the columns
colnames(m) <- c("Height", "Weight")

# Name the rows
rownames(m) <- c("Person1", "Person2")

# View matrix
m

# Access element in row 1, column 2
m[1, 2]

# Access entire first row
m[1, ]

# Access entire second column
m[, 2]

# Add a new row to the matrix
m <- rbind(m, c(5, 6))

# Add a new column to the matrix
m <- cbind(m, c(7, 8, 9))

# View updated matrix
m

#### Data Frames ####
# Create a data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  score = c(90, 85, 88)
)

# View data frame
df

# Access column using $
df$age

# Access element in row 2, column 3
df[2, 3]

# Subset rows where age > 28
df[df$age > 28, ]

# Add a new column
df$passed <- df$score > 87

# Add a new row
df <- rbind(df, data.frame(
  name = "David",
  age = 28,
  score = 92,
  passed = TRUE
))

# View everthing in the row that contain name = Bob
df[df$name == "Bob",]
# View everything in the frame that has scores
df$score
# View summary stats for the scores
summary(df$score)

# View updated data frame
df

df$extra_credit <- c(5, 4, 3, 2)

df$final_grade <- (df$score + df$extra_credit)

df[1]
df[2]
df[[1]]
df[[2]]
df[1,]
df[,1]

#### Lists ####
my_list <- list(
  numbers = c(1, 2, 3),
  matrix_data = matrix(1:4, nrow = 2),
  text = "Hello"
)

# View list
my_list

# Access first element using [[ ]]
my_list[[1]]

# Access element by name using $
my_list$text

# Access matrix inside list (row 1, column 2)
my_list$matrix_data[1, 2]

# Add a new element to the list
my_list$new_element <- c(TRUE, FALSE)

# View updated list
my_list

