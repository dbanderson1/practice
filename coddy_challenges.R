#### Operators Part 1 Challenge ####
# Given variables
student_score <- 78
passing_score <- 60
perfect_score <- 100
class_average <- 72

# TODO: Write your code below
# Use comparison operators to create the following logical variables:
# 1. passed - check if student_score >= passing_score
passed = student_score >= passing_score
# 2. is_perfect - check if student_score == perfect_score
is_perfect <- student_score == perfect_score
# 3. above_average - check if student_score > class_average
above_average <- student_score > class_average
# 4. not_failing - check if student_score != 0
not_failing <- student_score != 0
# 5. needs_improvement - check if student_score < passing_score
needs_improvement <- student_score < passing_score

# Print the results in order
print(passed)
print(is_perfect)
print(above_average)
print(not_failing)
print(needs_improvement)

#### Operators Part 2 Challenge - Logical Operators ####
# Given variables
age <- 17
has_permission <- TRUE
is_member <- FALSE
has_ticket <- TRUE

# TODO: Write your code below
# Create the following variables using logical operators (&&, ||):
# 1. can_enter_club - TRUE if age >= 18 AND is_member
can_enter_club <- age >= 18 && is_member
# 2. can_watch_movie - TRUE if age >= 18 OR has_permission
can_watch_movie <- age >= 18 || has_permission
# 3. can_attend_event - TRUE if has_ticket AND is_member
can_attend_event <- has_ticket && is_member
# 4. gets_discount - TRUE if is_member OR age < 18
gets_discount <- age < 18 || is_member
# 5. vip_access - TRUE if age >= 18 AND is_member AND has_ticket
vip_access <- age >= 18 && is_member && has_ticket

# Print the results in order
print(can_enter_club)
print(can_watch_movie)
print(can_attend_event)
print(gets_discount)
print(vip_access)

#### Operators Part 2 Challenge - Logical Operators Part 2 (NOT) ####
# Given variables
is_raining <- TRUE
has_umbrella <- FALSE
is_weekend <- TRUE
has_homework <- TRUE
is_tired <- FALSE

# TODO: Write your code below
# Use the NOT operator (!) along with AND (&) and OR (|) operators
# to create the required variables

# 1. stay_dry - opposite of is_raining
stay_dry <- !is_raining
# 2. will_get_wet - TRUE if raining AND NOT has umbrella
will_get_wet <- is_raining && !has_umbrella
# 3. can_relax - TRUE if weekend AND NOT has homework
can_relax <- is_weekend && !has_homework
# 4. should_go_out - TRUE if NOT raining OR has umbrella
should_go_out <- !is_raining || has_umbrella
# 5. productive_day - TRUE if NOT tired AND NOT weekend
productive_day <- !is_tired && !is_weekend
# Print the results in order
print(stay_dry)
print(will_get_wet)
print(can_relax)
print(should_go_out)
print(productive_day)

#### Operators Part 2 - Simple Logic ####
# Given variables - DO NOT MODIFY
purchase_amount <- 150
years_as_customer <- 3
has_loyalty_card <- TRUE
items_bought <- 7
is_holiday_season <- FALSE

# TODO: Write your code below
# Create the following variables using comparison and logical operators:
# 1. big_spender - TRUE if purchase_amount >= 100 AND has_loyalty_card
big_spender <- purchase_amount >= 100 && has_loyalty_card
# 2. loyal_customer - TRUE if years_as_customer >= 5 OR has_loyalty_card
loyal_customer <- years_as_customer >= 5 || has_loyalty_card
# 3. qualifies_for_gift - TRUE if items_bought > 5 AND purchase_amount > 100 AND NOT is_holiday_season
qualifies_for_gift <- items_bought > 5 && purchase_amount > 100 && !is_holiday_season
# 4. gets_bonus_points - TRUE if purchase_amount >= 100 AND years_as_customer >= 2 AND has_loyalty_card
gets_bonus_points <- purchase_amount >= 100 && years_as_customer >= 2 && has_loyalty_card
# 5. special_reward - TRUE if (purchase_amount > 200) OR (years_as_customer >= 5 AND has_loyalty_card) OR (items_bought >= 10)
special_reward <- purchase_amount > 200 || (years_as_customer >= 5 && has_loyalty_card) || items_bought >= 10

# Output the results
print(big_spender)
print(loyal_customer)
print(qualifies_for_gift)
print(gets_bonus_points)
print(special_reward)

#### Operators Part 2 - Vectorized Logic Part 1 ####

a <- c(FALSE, TRUE, TRUE, FALSE)
b <- c(TRUE, TRUE, FALSE, FALSE)
a | b

data <- c(15, 25, 45, 35)
data < 20 | data > 40

# Provided vectors
temperatures <- c(18, 25, 32, 15, 28, 35, 22)
humidity <- c(45, 80, 60, 30, 75, 85, 50)

# TODO: Write your code below
# 1. Create comfortable_temp: TRUE when temp >= 20 AND temp <= 30
comfortable_temp <- temperatures >= 20 & temperatures <= 30
# 2. Create high_humidity: TRUE when humidity > 70
high_humidity <- humidity >= 70
# 3. Create pleasant_day: TRUE when temp is 20-30 AND humidity <= 60
pleasant_day <- (temperatures > 20 & temperatures < 30) & humidity <= 60
# 4. Create extreme_weather: TRUE when temp > 30 OR humidity > 80
extreme_weather <- temperatures > 30 | humidity > 80
# 5. Create stay_inside: TRUE when temp < 18 OR (temp > 30 AND humidity > 70)
stay_inside <- temperatures < 18 | (temperatures > 30 & humidity > 70)

# Print the results
print(comfortable_temp)
print(high_humidity)
print(pleasant_day)
print(extreme_weather)
print(stay_inside)

#Given 
scores <- c(85, 60, 72, 90)
#which finds scores NOT above 75?
!(scores > 75)

#### Operators Part 2 - Vectorized Logic Part 2 ####
# Given vectors
scores <- c(45, 72, 88, 55, 91, 38, 67)
attended <- c(TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)
submitted_homework <- c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE)

# TODO: Write your code below
# 1. Create 'failed' - TRUE for scores NOT >= 60
failed <- !(scores >=60)
# 2. Create 'absent' - opposite of attended
absent <- !attended
# 3. Create 'at_risk' - NOT attended OR NOT submitted homework
at_risk <- !attended | !submitted_homework
# 4. Create 'passing_but_absent' - score >= 60 AND NOT attended
passing_but_absent <- scores >= 60 & absent
# 5. Create 'needs_support' - (score < 50) OR (NOT attended AND NOT submitted homework)
needs_support <- scores < 50 | (absent & !submitted_homework)
# Print the results
print(failed)
print(absent)
print(at_risk)
print(passing_but_absent)
print(needs_support)
#### Decision Making - If Statement ####
# Variables provided
balance <- 250
withdrawal_amount <- 100
is_account_active <- TRUE

# TODO: Write your code below
# Use an if statement to check if:
# 1. The account is active
# 2. The balance is greater than or equal to the withdrawal amount
# If both conditions are TRUE, print "Withdrawal approved"
if (is_account_active && balance >= withdrawal_amount) {
  print("Withdrawal approved")
}

if (is_account_active == TRUE && balance >= withdrawal_amount) {
  print("Withdrawal approved")
}

#### Decision Making - If - Else Statement ####
# Variables provided
age <- 16
required_age <- 18

# TODO: Write your if-else statement below to check if age >= required_age
# Print "Access granted" if TRUE, "Access denied" if FALSE
if (age >= required_age) {
  print("Access granted")
} else {
  print("Access denied")
}

# Variables are already defined
a <- 20
b <- 4
operator <- "*"

# TODO: Write your code below
# Use if-else statements to check the operator and perform the calculation
# Remember to use print() for your output
if (operator == "*") {
  print(a * b)
}

score <- 85

if (score >= 90) {
  print("Grade: A")
} else if (score >= 80) {
  print("Grade: B")
} else {
  print("Grade: C or below")
}

#alternatively 

score <- 85

if (score >= 90) {
  print("Grade: A")
} else {
  if (score >= 80) {
    print("Grade: B")
  } else {
    print("Grade: C or below")
  }
}

# Variable provided
age <- 25

# TODO: Write your code below
# Use nested if-else or else if statements to determine the ticket price
# based on the age rules provided
# If age is less than 5, print "Free"
# If age is between 5 and 12 (inclusive), print "$5"
# If age is between 13 and 17 (inclusive), print "$8"
# If age is between 18 and 64 (inclusive), print "$12"
# If age is 65 or older, print "$7"

if (age < 5) {
  print("Free")
} else if (age >= 5 & age <= 12) {
  print ("$5")
} else if (age > 12 & age <= 17) {
  print ("$8")
} else if (age > 17 & age <= 64) {
  print ("$12")
} else {
  print("$7")
}

#### Basic IO - cat() and print() ####
## print() Function ##
# TODO: Write your code below
# Use print() to display each value on its own line

# 1. Print the character string "R Programming"
print ("R Programming")
# 2. Print the numeric value 3.14
print (3.14)
# 3. Print the logical value FALSE
print (25 < 7)
# 4. Print the result of the expression 25 - 7
print (25-7)
# 5. Print the result of the comparison 100 >= 50
print (100 >= 50)

## Cat() function ##
# Variables are already defined for you
product <- "Laptop"
price <- 999
in_stock <- TRUE

# TODO: Use cat() to display the formatted message with each piece of information on its own line
# Remember to use \n for line breaks
# "\n" MUST be inside quotations
cat("Product:", product, "\n")
cat("Price:", price, "\n")
cat("Available:", in_stock)

# Book information variables
title <- "The R Guide"
pages <- 350
price <- 29.99

# TODO: Use cat() to display the book information
# Each piece of information should be on its own line
# Calculate the sale price (20% off) directly in the cat() call
cat("Book:", title, "\n")
cat("Pages:", pages, "\n")
cat("Original Price:", price, "\n")
cat("Sale Price:", price * .8, "\n")

## paste0()function ##
paste0(x, y)



#### paste() and paste0() ####
# paste0() joins pieces of text together with NO spaces added
# Think of paste0() as "glue things together exactly as written"
## Basic example

name <- "Emma"

# paste() adds a space between elements by default
paste("Hello", name)
# Output: "Hello Emma"

# paste0() does NOT add a space
paste0("Hello", name)
# Output: "HelloEmma"

# To include a space with paste0(), you must add it explicitly
paste0("Hello ", name)
# Output: "Hello Emma"

## Example 2 ##

city <- "Paris"

# cat() automatically inserts a space between arguments
cat(city, "!\n")
# Output: Paris !

## paste0() ##

# paste0() is a base R function that concatenates (joins) values together into a single character string with no separator.
paste0(city, "!")
# Output: "Paris!"

## Common beginner-friendly uses of paste0()
# Add punctuation
paste0("Score: ", 95, "%")
# Output: "Score: 95%"

# Build filenames
paste0("subject_", 12, ".csv")
# Output: "subject_12.csv"

# Combine words without spaces
paste0("BMI", "_", "category")
# Output: "BMI_category"

## Summary ##

# paste()  -> joins text WITH spaces
# paste0() -> joins text WITHOUT spaces
# Use paste0() when formatting must be exact

#### readline() function ####
# Read input
con <- file("stdin", "r")
name <- suppressWarnings(readLines(con, n = 1))
city <- suppressWarnings(readLines(con, n = 1))

# TODO: Write your code below to display the greeting message
# Use cat() to output: Welcome, [name] from [city]!
# Don't forget the newline character \n at the end
cat("Welcome,", name, "from", paste0(city, "!"), "\n")
#### Conversions - as.numeric() & as.character() ####
## as.numeric()
input <- "42"
number <- as.numeric(input)

cat(number + 8, "\n")  # Output: 50

age_text <- readline()
age <- as.numeric(age_text)

cat("In 10 years, you will be", age + 10, "\n")

## as.character()
number <- 100
text <- as.character(number)

cat("The value is:", text, "\n")

## Examples
# Read input
con <- file("stdin", "r")
price_str <- suppressWarnings(readLines(con, n = 1))
quantity_str <- suppressWarnings(readLines(con, n = 1))
close(con)

# TODO: Write your code below
# 1. Convert price_str and quantity_str to numeric values using as.numeric()
# 2. Calculate the total cost (price * quantity)
# 3. Display the result using cat() with the format "Total: [result]\n"
total_cost <- as.numeric(price_str) * as.numeric(quantity_str)
cat ("Total:", total_cost,"\n")

# Read input
con <- file("stdin", "r")
birth_year <- suppressWarnings(readLines(con, n = 1))
current_year <- suppressWarnings(readLines(con, n = 1))
# TODO: Convert inputs to numeric and calculate the age
age <- as.numeric(current_year) - as.numeric(birth_year)

# Output the result in the format: "You are [age] years old"
cat("You are", age, "years old\n")

# Read input
input_string <- "TRUE"

# TODO: Write your code below
# 1. Convert the input string to a logical value
# 2. Apply the NOT operator (!) to get the opposite value
result <- !as.logical(input_string)

# Output the result
cat("Opposite: ", result, "\n", sep = "")

#### Bill Split Calculator ####

# TODO: Write your code below
# Use cat() to display the welcome message
# Remember to use \n for new lines
cat("Welcome to the Bill Split Calculator!\nLet's split your bill fairly.\n")

# Read user inputs
con <- file("stdin", "r")
bill <- as.numeric(suppressWarnings(readLines(con, n = 1)))
tip_percent <- as.numeric(suppressWarnings(readLines(con, n = 1)))
people <- as.numeric(suppressWarnings(readLines(con, n = 1)))
close(con)

# Display confirmation message
cat("Bill: $", sprintf("%.2f", bill), "\n", sep = "")
cat("Tip: ", tip_percent, "%\n", sep = "")
cat("People: ", people, "\n", sep = "")
cat("Tip amount: $", sprintf("%.2f", (bill * tip_percent / 100)), "\n", sep = "")
cat("Total with tip: $", sprintf("%.2f", (bill + (bill * tip_percent / 100))), "\n", sep = "")
cat("Each person pays: $", sprintf("%.2f", ((bill + (bill * tip_percent / 100))/people)), "\n", sep = "")

# this uses the sprintf() function
value <- 3.555
sprintf("%.2f", value) #formats a number to 2 decimal places.

#### readline() vs stdin for inputs ####

# WHY THIS HAPPENS
# - In normal R/RStudio, readline() works for interactive typing.
# - In many autograders, input is "piped" into the program (stdin),
#   so readline() may return "" (empty string) instead of the test value.
# - Converting "" to numeric/logical often produces NA:
#     as.numeric("")  -> NA
#     as.logical("")  -> NA
# - That leads to outputs like: $NA, NA%, NA, etc.
#
# RULE OF THUMB
# - If your Coddy/autograder solution prints NA even though your logic is correct,
#   switch from readline() to reading from stdin using file("stdin","r") + readLines().

## INTERACTIVE INPUT (works locally, may fail in autograders)

# Example: interactive input (user types into console)
x_chr <- readline()             # user types: 100
x_num <- as.numeric(x_chr)      # 100


# STDIN INPUT (works in autograders; reads piped test cases)
# Open a connection to standard input (stdin) in read mode ("r")
con <- file("stdin", "r")

# Read one line at a time from the input stream
bill <- as.numeric(readLines(con, n = 1))
tip_percent <- as.numeric(readLines(con, n = 1))
people <- as.numeric(readLines(con, n = 1))

# Close the connection (good practice)
close(con)


# WHY suppressWarnings() IS SOMETIMES USED
# Autograders sometimes fail or clutter output if warnings print.
# suppressWarnings() hides warnings but does not change results.
con <- file("stdin", "r")
bill <- as.numeric(suppressWarnings(readLines(con, n = 1)))
tip_percent <- as.numeric(suppressWarnings(readLines(con, n = 1)))
people <- as.numeric(suppressWarnings(readLines(con, n = 1)))
close(con)


## QUICK DIAGNOSTIC SNIPPETS

# If this prints NA in an autograder, your input is probably blank or messy:
# (You can temporarily print debug lines, but remove them for final submission)
# cat("DEBUG raw input = [", x_chr, "]\n", sep = "")

# Demonstrate strict conversion behavior (why NA happens)
as.numeric("")      # NA
as.logical("TRUE")  # TRUE
as.logical("true")  # NA (case-sensitive)
as.logical(" TRUE") # NA (leading space)

# If you must clean interactive strings (not always needed for stdin lines):
s <- "  true "
s_clean <- toupper(trimws(s))
as.logical(s_clean) # TRUE

## TL;DR CHEAT NOTE

# LOCAL / RSTUDIO: use readline()
# AUTOGRADER: use con <- file("stdin","r") and readLines(con, n=1)

#### sprint() function ####
#Use sprintf() to format each monetary value.
value <- 3.555
sprintf("%.2f", value) #formats a number to 2 decimal places.

#### Loops ####
## Basic Loops ##
# A for loop iterates through a sequence of values, running the code inside the loop once for each value:
for (i in 1:3) {
  print(i)
}

# You can use any variable name and perform any operations inside the loop:
for (num in 1:4) {
  print(num * 2)
}

# Read input
con <- file("stdin", "r")
n <- as.integer(suppressWarnings(readLines(con, n = 1)))

# TODO: Write your code below
# Use a for loop to print the square of each number from 1 to n
for (i in 1:n) {
  print(i * i)
}

## While Loop ##

count <- 1
while (count <= 3) {
  print(count)
  count <- count + 1
}



total <- 0
num <- 1
while (num <= 5) {
  total <- total + num
  num <- num + 1
}
print(total)

# Read input
con <- file("stdin", "r")
n <- as.integer(suppressWarnings(readLines(con, n = 1)))

# Initialize variables
total <- 0
counter <- 1

# TODO: Write your while loop below to calculate the sum from 1 to n
total <- 0
num <- 1
while (num <= n) {
  total <- total + num
  num <- num + 1
}

# Print the result
print(total)

#### Break Loops & Next ####
# Sometimes you need to exit a loop early, before it finishes all its iterations.
# The break statement lets you immediately stop a loop when a specific condition is met.
for (i in 1:10) {
  if (i == 5) {
    break
  }
  print(i)
}

# or 

for (n in 1:100) {
  if (n > 15) {
    break
  }
  print(n)
}


# Read input
con <- file("stdin", "r")
limit <- as.integer(suppressWarnings(readLines(con, n = 1)))

# TODO: Write your code below
# Use a for loop from 1 to limit
# Print each number before checking the condition
# Break when you find a number divisible by both 3 and 7
# Hint: Use %% operator to check divisibility
for ( n in 1:limit) {
  print(n)
  if (n %% 3 == 0 && n %% 7 == 0) {
    break
  }
}

# Print "Loop ended" after the loop
print("Loop ended")

# While break exits a loop entirely, sometimes you only want to skip the current iteration and continue with the next one.
# The next statement does exactly that.
for (i in 1:5) {
  if (i == 3) {
    next
  }
  print(i)
}
# this loops prints 1-5 but skips 3

for (num in 1:6) {
  if (num %% 2 != 0) {
    next
  }
  print(num)
}
# this loop prints even numbers

# Read input
con <- file("stdin", "r")
n <- as.integer(suppressWarnings(readLines(con, n = 1)))

# TODO: Write your code below
# Use a for loop to iterate from 1 to n
# Use the next statement to skip numbers divisible by 4
# Print all other numbers using print()
for (num in 1:n) {
  if (num %% 4 == 0) {
    next
  }
  print(num)
}

#### Data Structures - Vectors and Factors ####
## challenge 1
# Create the temperatures vector
temperatures <- c(22.5, 25.3, 18.9, 20.1, 23.7)

# TODO: Write your code below to perform the required operations
# Placeholder for count of temperatures
temp_count <- length(temperatures)

# Placeholder for average temperature
average_temp <- sum(temperatures)/temp_count

# Placeholder for highest temperature
highest_temp <- max(temperatures)

# Placeholder for lowest temperature
lowest_temp <- min(temperatures)

# Placeholder for temperature range
temp_range <- highest_temp - lowest_temp

# Print the results
cat("Average:", sprintf("%.1f", average_temp), "\n")
cat("Highest:", highest_temp, "\n")
cat("Lowest:", lowest_temp, "\n")
cat("Range:", sprintf("%.1f", temp_range), "\n")
cat("Count:", temp_count, "\n")

## Challenge 2
# Read input (not needed for this challenge)

# TODO: Write your code below
is_weekend <- c(TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE)
weather <- factor(c("Sunny","Rainy","Cloudy","Sunny","Rainy"))

# Print the class of is_weekend
print(class(is_weekend))

# Print the class of weather
print(class(weather))

# Print the number of TRUE values in is_weekend
print(sum(is_weekend))

# Print the levels of weather
print(levels(weather))

# Challenge 3
# Note: Make sure your output matches the expected format exactly

# Create the initial mixed_list
mixed_list <- list(42, "R programming", TRUE, c(1, 2, 3))

# TODO: Write your code below to complete the tasks

# Print the class of the third element
print(class(mixed_list[[3]]))

# Print the second element of the vector in the fourth element
print(mixed_list[[4]][2])

# TODO: Add a new element to the list
mixed_list[[5]] <- c("apple", "cherry", "banana")
# TODO: Print the length of the updated list
print(length(mixed_list))

# TODO: Print the number of elements in the newly added character vector
print(length(mixed_list[[5]]))

#### Sequence Generation (seq, :) ####

# The colon operator creates a sequence of consecutive integers:
print(1:5)
print(10:6)

# The seq() function gives you more flexibility.
# You can specify a step size using the by argument:
print(seq(2, 10, by = 2))
print(seq(1, 10, length.out = 4))

# Read input
con <- file("stdin", "r")
start <- as.numeric(suppressWarnings(readLines(con, n = 1)))
end <- as.numeric(suppressWarnings(readLines(con, n = 1)))
step <- as.numeric(suppressWarnings(readLines(con, n = 1)))

# TODO: Write your code below
# 1. Use seq() to generate a sequence from start to end with the given step
# 2. Use a for loop to iterate through the sequence
# 3. Print the square of each number using print()
values <- seq(start, end, by = step)
for (x in values) {
  print(x^2)
}

#### Nested Loops ####
# You can place a loop inside another loop to create a nested loop.
# The inner loop runs completely for each iteration of the outer loop
# making this useful when working with combinations or grid-like patterns

# Example: 
for (i in 1:3) {
  for (j in 1:2) {
    cat("i =", i, ", j =", j, "\n")
  }
}

# practical solution for making a multiplication pattern
for (row in 1:3) {
  for (col in 1:3) {
    cat(row * col, " ")
  }
  cat("\n")
}


# Read input
con <- file("stdin", "r")
rows <- as.integer(suppressWarnings(readLines(con, n = 1)))
cols <- as.integer(suppressWarnings(readLines(con, n = 1)))
close(con)

# TODO: Write your code below
# Use nested loops to print a rectangle where each cell contains row + column
# Use cat() to print values separated by spaces, with a newline after each row
for (row in 1:rows) {
  for (col in 1:cols) {
    cat(row + col, " ")
  }
  cat("\n")
}


#### Challenge - Nested Loops with Break Function ####
# Read input from stdin
con <- file("stdin", "r")

# Initialize counters
positive_count <- 0
negative_count <- 0

# Repeat loop
repeat {
  input <- suppressWarnings(readLines(con, n = 1))
  if (input == "end") {
    break
  }
  value <- as.numeric(input)
  if (value > 0) {
    positive_count <- positive_count + 1
  } else if (value < 0) {
    negative_count <- negative_count + 1
  }
}
close(con)

# Output the results
cat("Positive:", positive_count, "\n")
cat("Negative:", negative_count, "\n")


#### Declare a function ####
# But what if you need to perform the same task multiple times in different places?
# Instead of copying and pasting code, you can create a function - a reusable block of code that you can call whenever you need it.
# In R, you declare a function using the function keyword:

greet <- function() {
  print("Hello!")
}

greet()

# Arguments (also called parameters) let you pass values into a function
# Making it flexible and reusable for different situations.

# character example
greet <- function(name) {
  print(paste("Hello,", name))
}

greet("Alice")
greet("Bob")

# numeric example
add <- function(a, b) {
  print(a + b)
}

add(5, 3)
add(10, 20)

# Read input
con <- file("stdin", "r")
length <- as.numeric(suppressWarnings(readLines(con, n = 1)))
width <- as.numeric(suppressWarnings(readLines(con, n = 1)))
close(con)

# TODO: Create a function called calculate_area that takes length and width
# and prints the area (length * width)
calculate_area <- function(length, width) {
  print (length * width)
}

# Call your function with the input values
calculate_area(length, width)

#### Return Function ####
# Use the return() function to send a value back from your function:
add <- function(a, b) {
return(a + b)
}

result <- add(5, 3)
print(result)

# Instead of printing inside the function, we return the sum. 
# The returned value can then be stored in a variable, used in calculations, or passed to other functions.

double <- function(x) {
  return(x * 2)
}

print(double(5) + double(3))

# Read input
con <- file("stdin", "r")
base <- as.numeric(suppressWarnings(readLines(con, n = 1)))
exponent <- as.numeric(suppressWarnings(readLines(con, n = 1)))

# TODO: Create a function called calculate_power that takes base and exponent
# and returns base raised to the power of exponent using the ^ operator
calculate_power <- function(a, b) {
  return(a ^ b)
}

# TODO: Call your function with the input values and store the result in 'result'


# Output the result
result <- calculate_power(base, exponent)
print(result)

#### Challenges, Sigma Function and Valid Password ####
# Read input
con <- file("stdin", "r")
n <- suppressWarnings(readLines(con, n = 1))
n <- as.numeric(n)

# TODO: Create a function called 'sigma' that takes one argument 'n'
# and returns the sum of all integers from 1 to n
sigma <- function(a) {
  sum(1:a)
}

# Call the function and print the result
print(sigma(n))

# Read input
con <- file("stdin", "r")
password <- suppressWarnings(readLines(con, n = 1))

# TODO: Create the is_valid_password function below
# The function should:
# - Take a password string as argument
# - Check if length is at least 8 characters
# - Check if length is no more than 20 characters
# - Return TRUE if both conditions are met, FALSE otherwise
# Hint: Use nchar() to get the string length
is_valid_password <- function(a) {
  if (nchar(a) >= 8 && nchar(a) <= 20)
    return(TRUE)
  else {
    return(FALSE)
  }
}

# Call the function and print the result
print(is_valid_password(password))

#### Function Default Parameter ####
# Sometimes you want a function to have a "standard" behavior that can be customized when needed.
# Default parameter values let you define what a parameter should be if the caller doesn't provide it.
# You set a default value by using = in the function definition:

greet <- function(name = "Guest") {
  print(paste("Hello,", name))
}

greet()
greet("Alice")

# When called without an argument, the function uses "Guest" as the default.
# When you provide a value, it overrides the default.

# You can mix required and optional parameters.
# Parameters with defaults should come after those without:

calculate_total <- function(price, tax_rate = 0.1) {
  return(price + (price * tax_rate))
}

print(calculate_total(100))
print(calculate_total(100, 0.2))

# Here, price is required while tax_rate defaults to 10%.
# This makes your functions flexible - simple to use in common cases, but customizable when needed.

## Challenge

# Read input
con <- file("stdin", "r")
weight <- as.numeric(suppressWarnings(readLines(con, n = 1)))
rate_input <- suppressWarnings(readLines(con, n = 1))
close(con)

# TODO: Write your code below
# 1. Define the calculate_shipping function with weight (required) and rate (optional, default = 5)
# 2. Check if rate_input is "default" or a number
# 3. Call the function appropriately and print the result
# Define the function
calculate_shipping <- function(weight, rate = 5) {
  weight * rate
}

# Decide how to call the function
if (rate_input == "default") {
  result <- calculate_shipping(weight)
} else {
  result <- calculate_shipping(weight, as.numeric(rate_input))
}

print(result)

#### FizzBuzz Challenge ####

# In the previous lesson, you created a check_divisible function.
# Now, build the core fizzbuzz function that determines what to output for a single number.
# In the previous lesson, you created the fizzbuzz function that handles a single number.
# Now, add a loop to process a range of numbers from 1 to a given limit.
# In the previous lesson, you created a FizzBuzz program that loops through numbers using the default divisors 3 and 5.
# Now, add the twist by making the divisors customizable through default parameters.

## START
# Read input
con <- file("stdin", "r")
number <- as.numeric(suppressWarnings(readLines(con, n = 1)))
fizz_divisor <- as.numeric(suppressWarnings(readLines(con, n = 1)))
buzz_divisor <- as.numeric(suppressWarnings(readLines(con, n = 1)))

# TODO: Create a function called check_divisible that takes two arguments:
# number and divisor. Return TRUE if number is divisible by divisor, FALSE otherwise.
fizzbuzz <- function(a) {
  if (a %% fizz_divisor == 0 && a %% buzz_divisor == 0)
    return("FizzBuzz")
  if (a %% fizz_divisor == 0) 
    return("Fizz")
  if (a %% buzz_divisor == 0) 
    return("Buzz")
  else
    return(as.character(a))
}

# Call your function and print the result
for (number in 1:number) {
  print(fizzbuzz(number))
}
## END
#### Vectors ####

# A vector is R's fundamental data structure for storing multiple values of the same type.
# You create vectors using the c() function, where "c" stands for "combine":

temperatures <- c(72, 75, 68, 80, 77)
print(temperatures)

# Vectors can hold any data type you've learned - numeric, character, or logical:

names <- c("Alice", "Bob", "Charlie")
passed <- c(TRUE, FALSE, TRUE)

print(names)
print(passed)

# One important rule: all elements in a vector must be the same type. If you mix types, 
# R will automatically convert them to a common type. You can check a vector's length using length():

scores <- c(85, 92, 78, 95)
print(length(scores))

#START
# TODO: Write your code below

# 1. Create a numeric vector called 'prices' with values: 19.99, 29.99, 9.99, 49.99
price <- c(19.99, 29.99, 9.99, 49.99)

# 2. Create a character vector called 'colors' with values: "red", "green", "blue"
colors <- c("red", "green", "blue")

# 3. Create a logical vector called 'in_stock' with values: TRUE, FALSE, TRUE, TRUE, FALSE
in_stock <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

# Print each vector followed by its length using length()
print(price)
print(length(price))
print(colors)
print(length(colors))
print(in_stock)
print(length(in_stock))
#END

#In R, you access vector elements using square brackets [] with the position number
# of the element you want.

fruits <- c("apple", "banana", "cherry", "date")
print(fruits[1])
print(fruits[3])

# You can also access multiple elements at once by providing a vector of positions:

scores <- c(85, 92, 78, 95, 88)
print(scores[c(1, 3, 5)])

# To access the last element of a vector, combine length() with indexing:

numbers <- c(10, 20, 30, 40)
print(numbers[length(numbers)])

#START
# Vector of temperatures
temperatures <- c(72, 68, 75, 80, 65, 78, 71)

# TODO: Write your code below
# 1. Print the first temperature
print(temperatures[1])
# 2. Print the fourth temperature
print(temperatures[4])
# 3. Print the last temperature (use length() to find it dynamically)
print(temperatures[length(temperatures)])
# 4. Print the 2nd, 4th, and 6th temperatures together
print(temperatures[c(2, 4, 6)])
#END

# To modify a single element, use the assignment operator with the element's index:

scores <- c(85, 92, 78, 95)
scores[2] <- 88
print(scores)

# You can also modify multiple elements at once by providing a vector of positions:

temperatures <- c(70, 72, 68, 75, 71)
temperatures[c(1, 3)] <- c(69, 67)
print(temperatures)

# To add new elements to a vector, you can assign a value to a position beyond\
# the current length, or use c() to combine vectors:

colors <- c("red", "blue")
colors[3] <- "green"
colors <- c(colors, "yellow")
print(colors)

#START
# Initial vector
grades <- c(78, 85, 90, 72, 88)

# TODO: Write your code below
# 1. Change the second element to 92
grades[2] <- 92
# 2. Change the first and fourth elements to 80 and 75 respectively
grades[c(1, 4)] <- c(80, 75)
# 3. Add a new element 95 at position 6
grades[6] <- 95
# 4. Use c() to append the value 82 to the end of the vector
grades <- c(grades, 82)

# Print the final vector
print(grades)
#END

# When you apply an arithmetic operator to a vector, R performs the operation on every element:

prices <- c(10, 25, 15, 30)
discounted <- prices * 0.9
print(discounted)

# You can also perform operations between two vectors of the same length. R pairs up corresponding elements:

quantities <- c(2, 1, 4, 3)
prices <- c(10, 25, 15, 30)
totals <- quantities * prices
print(totals)

# R provides useful built-in functions for common vector calculations like sum(), mean(), min(), and max():

scores <- c(85, 92, 78, 95, 88)
print(sum(scores))
print(mean(scores))
print(min(scores))
print(max(scores))

#START
# Given vectors
hours_worked <- c(8, 7, 9, 6, 8)
hourly_rate <- c(15, 20, 18, 22, 17)

# TODO: Write your code below

# 1. Calculate daily earnings (element-wise multiplication)
daily_earnings <- hours_worked * hourly_rate
print(daily_earnings)
# 2. Apply 10% bonus to daily earnings
bonus_rate <- daily_earnings * 1.1
print(bonus_rate)
# 3. Print total earnings for the week using sum()
print(sum(bonus_rate))
# 4. Print average daily earnings using mean()
print(mean(bonus_rate))
# 5. Print highest single-day earnings using max()
print(max(bonus_rate))
# 6. Print lowest single-day earnings using min()
print(min(bonus_rate))
#END

#START
# Read input
con <- file("stdin", "r")
prices_input <- suppressWarnings(readLines(con, n = 1))
discount <- suppressWarnings(readLines(con, n = 1))
close(con)

# Convert inputs
original_prices <- as.numeric(unlist(strsplit(prices_input, ",")))
discount_percent <- as.numeric(discount)

# TODO: Write your code below
# 1. Change the third item to 125
original_prices[3] <- 125
# 2. Apply the discount to all prices
discounted_price <- original_prices * ((100 - discount_percent)/100)
# 3. Print the discounted prices vector
print(discounted_price)
# 4. Print the total using sum()
print(sum(discounted_price))
# 5. Print the average using mean()
print(mean(discounted_price))
#END

#START
# Read input
con <- file("stdin", "r")
input <- suppressWarnings(readLines(con, n = 1))

# Parse the comma-separated numbers into a vector
numbers <- as.numeric(strsplit(input, ",")[[1]])

# TODO: Write your code below
# 1. Reverse the vector
## IMPORTANT rev() is function that you can use to reverse vectors
reversed <- rev(numbers)
# 2. Print the reversed vector
print(reversed)
# 3. Calculate and print the sum of first and last elements of the reversed vector
sum_fl <- reversed[1] + reversed[length(reversed)]
print(sum_fl)
#END

# You can create a named vector by providing names during creation:
ages <- c(alice = 25, bob = 30, charlie = 28)
print(ages)
print(ages["bob"])

# You can also add names to an existing vector using the names() function:
scores <- c(85, 92, 78)
names(scores) <- c("math", "science", "english")
print(scores["math"])

#START
# Read input
con <- file("stdin", "r")
products_input <- suppressWarnings(readLines(con, n = 1))
prices_input <- suppressWarnings(readLines(con, n = 1))
close(con)

# Parse the comma-separated inputs
product_names <- strsplit(products_input, ",")[[1]]
price_values <- strsplit(prices_input, ",")[[1]]


# TODO: Write your code below
# 1. Create a numeric vector from the prices
prices <- as.numeric(price_values)
# 2. Assign the product names to the vector using names()
names(prices) <- c(product_names)
# 3. Print the entire named vector
print(prices)
# 4. Print the price of the second product by accessing it using its name
print(prices[product_names[2]])
# 5. Print the price of the last product by accessing it using its name
print(prices[product_names[length(product_names)]])
#END

#### Iterating Over Sequences ####

# The simplest way to loop through a vector is to iterate directly over its elements:
fruits <- c("apple", "banana", "cherry")
for (fruit in fruits) {
  print(fruit)
}

# You can combine iteration with conditional logic to process elements selectively:
numbers <- c(3, 8, 2, 10, 5)
for (num in numbers) {
  if (num > 5) {
    print(num)
  }
}

# The seq_along() function returns a sequence from 1 to the length of the vector:
fruits <- c("apple", "banana", "cherry")
print(seq_along(fruits))

# By looping over these indices, you can access both the position and the value:
fruits <- c("apple", "banana", "cherry")
for (i in seq_along(fruits)) {
  cat(i, ":", fruits[i], "\n")
}

# START
# Read input
con <- file("stdin", "r")
input_line <- suppressWarnings(readLines(con, n = 1))
close(con)

# Convert comma-separated string to numeric vector
numbers <- as.numeric(strsplit(input_line, ",")[[1]])

# TODO: Write your code below
# Use seq_along() to loop through the vector
# For each position, print the index, value, and running total
# Use cat() with format: Position X: VALUE (Running total: TOTAL)\n
for (i in seq_along(numbers)) {
  cat("Position ", i, ": ", numbers[i], " (Running total: ", sum(numbers[1:i]),")\n", sep="")
}
# END

# The strsplit() function takes two arguments: the string to split and the separator.
# To split into individual characters, use an empty string "" as the separator:

word <- "hello"
chars <- strsplit(word, "")[[1]]
print(chars)

# Once you have the characters as a vector, you can iterate over them using the techniques you've already learned:

word <- "R"
chars <- strsplit(word, "")[[1]]
for (char in chars) {
  print(char)
}

# START
# Read input
con <- file("stdin", "r")
word <- suppressWarnings(readLines(con, n = 1))

# Initialize counter for letter 'a'
count_a <- 0

# TODO: Write your code below
# 1. Use strsplit() to split the word into individual characters
chars <- strsplit(word, "")[[1]]
# 2. Loop through each character
# 3. Print each character using print()
for (letter in chars) {
  print(letter)
}
# 4. Count how many times 'a' appears
for (letter in chars) {
  if (letter == "a") {
    count_a <- count_a + 1
  }
}

# Output the count of 'a'
cat("Count of 'a': ", count_a, "\n", sep = "")
# END
