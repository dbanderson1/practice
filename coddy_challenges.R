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
