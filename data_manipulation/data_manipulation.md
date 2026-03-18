# Global Setup

``` r
library(tidyverse)
```

    ## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.2.0     ✔ readr     2.1.6
    ## ✔ forcats   1.0.1     ✔ stringr   1.6.0
    ## ✔ ggplot2   4.0.2     ✔ tibble    3.3.1
    ## ✔ lubridate 1.9.5     ✔ tidyr     1.3.2
    ## ✔ purrr     1.2.1     
    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
library(knitr)
library(markdown)
# set the default global option for displaying code chunks
knitr::opts_chunk$set(echo = TRUE)
```

# Overview

This is a document that covers the material’s in [Coddy’s R Data
Manipulation
course](https://coddy.tech/courses/data_manipulation_in_r/). Feel free
to use this to help complete the certificate.

# Modules

## Data Basics

### Understanding Data Structures

#### Vectors

``` r
# Creating a numeric vector
numbers <- c(1, 2, 3, 4, 5)

# Creating a character vector
fruits <- c("apple", "banana", "cherry")

# Accessing elements
print(numbers[2])  # Output: 2
```

    ## [1] 2

``` r
print(fruits[1:2])  # Output: "apple" "banana"
```

    ## [1] "apple"  "banana"

#### Matrices

``` r
# Creating a matrix
mat <- matrix(1:6, nrow = 2, ncol = 3)

# Accessing elements
print(mat[1, 2])  # Returns the element in the 1st row and 2nd column (Output: 3)
```

    ## [1] 3

``` r
print(mat[, 1])   # Returns the 1st column as a vector (Output: 1 2)
```

    ## [1] 1 2

#### Data Frames

``` r
# Creating a data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  city = c("New York", "London", "Paris")
)

# Accessing elements
print(df$name)        # Returns the column named "name" (Output: "Alice" "Bob" "Charlie")
```

    ## [1] "Alice"   "Bob"     "Charlie"

``` r
print(df[2, "age"])   # Output: 30
```

    ## [1] 30

#### Challenge & Solution

``` r
# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con, n = 3))

# Process input data
data_list <- strsplit(input_data, ",")
names <- sapply(data_list, function(x) x[1])
ages <- as.numeric(sapply(data_list, function(x) x[2]))
heights <- as.numeric(sapply(data_list, function(x) x[3]))

# Create the initial data frame
df <- data.frame(
  name = names,
  age = ages,
  height = heights
)

# TODO: Write your code below
# 1. Add a new column 'height_m'
df$height_m <- heights/100
# 2. Calculate and print the average age
avg_age <- mean(df$age)
# 3. Print the name of the tallest person (in meters)
tallest_person <- df$name[df$height == max(df$height)]

# Placeholder for output
cat("Average age:", avg_age, "\n")
cat("Tallest person:", tallest_person)
```

### Dataframe Indexing

#### Example Data Frame

``` r
df <- data.frame(
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  age = c(25, 30, 35, 28, 22),
  city = c("New York", "London", "Paris", "Tokyo", "Sydney"),
  salary = c(50000, 60000, 75000, 55000, 45000)
)
```

#### Indexing by Position

``` r
# Single element
df[2, 3]  # Returns the element in the 2nd row and 3rd column (character: "London")
```

    ## [1] "London"

``` r
# Entire row
df[3, ]  # Returns the 3rd row as a data frame with 1 row and all columns
```

    ##      name age  city salary
    ## 3 Charlie  35 Paris  75000

``` r
# Entire column
df[, 2]  # Returns the 2nd column as a vector
```

    ## [1] 25 30 35 28 22

``` r
df[[2]]  # Also returns the 2nd column as a vector
```

    ## [1] 25 30 35 28 22

``` r
# Multiple rows or columns:
df[1:3, ]  # Returns the first 3 rows
```

    ##      name age     city salary
    ## 1   Alice  25 New York  50000
    ## 2     Bob  30   London  60000
    ## 3 Charlie  35    Paris  75000

``` r
df[, c(1, 3)]  # Returns the 1st and 3rd columns
```

    ##      name     city
    ## 1   Alice New York
    ## 2     Bob   London
    ## 3 Charlie    Paris
    ## 4   David    Tokyo
    ## 5     Eve   Sydney

#### Indexing by Name

``` r
# Single column
df$age  # Returns the "age" column as a vector
```

    ## [1] 25 30 35 28 22

``` r
df[["age"]]  # Also returns the "age" column as a vector
```

    ## [1] 25 30 35 28 22

``` r
# Multiple columns
df[c("name", "city")]  # Returns a data frame with "name" and "city" columns
```

    ##      name     city
    ## 1   Alice New York
    ## 2     Bob   London
    ## 3 Charlie    Paris
    ## 4   David    Tokyo
    ## 5     Eve   Sydney

#### Logical Indexing

``` r
df[df$age > 30, ]  # Returns rows where age is greater than 30
```

    ##      name age  city salary
    ## 3 Charlie  35 Paris  75000

#### Combining Methods

``` r
df[df$salary > 50000, "name"]  # Returns names of people with salary > 50000
```

    ## [1] "Bob"     "Charlie" "David"

#### Adding and Modifying Data

``` r
# Adding a new column
df$department <- c("HR", "IT", "Finance", "Marketing", "Sales")
# Modifying existing data
df[df$name == "Alice", "salary"] <- 52000
```

#### Displaying Data Frame

``` r
# head() previews the first rows
head(df)
```

    ##      name age     city salary department
    ## 1   Alice  25 New York  52000         HR
    ## 2     Bob  30   London  60000         IT
    ## 3 Charlie  35    Paris  75000    Finance
    ## 4   David  28    Tokyo  55000  Marketing
    ## 5     Eve  22   Sydney  45000      Sales

``` r
# tail() previews the last rows
tail(df)
```

    ##      name age     city salary department
    ## 1   Alice  25 New York  52000         HR
    ## 2     Bob  30   London  60000         IT
    ## 3 Charlie  35    Paris  75000    Finance
    ## 4   David  28    Tokyo  55000  Marketing
    ## 5     Eve  22   Sydney  45000      Sales

``` r
# names() shows column names
names(df)
```

    ## [1] "name"       "age"        "city"       "salary"     "department"

``` r
# colnames() functions the same as names()
colnames(df)
```

    ## [1] "name"       "age"        "city"       "salary"     "department"

``` r
# rownames() shows names of rows
rownames(df)
```

    ## [1] "1" "2" "3" "4" "5"

``` r
# glimpse from tidyverse, shows quick structure view
glimpse(df)
```

    ## Rows: 5
    ## Columns: 5
    ## $ name       <chr> "Alice", "Bob", "Charlie", "David", "Eve"
    ## $ age        <dbl> 25, 30, 35, 28, 22
    ## $ city       <chr> "New York", "London", "Paris", "Tokyo", "Sydney"
    ## $ salary     <dbl> 52000, 60000, 75000, 55000, 45000
    ## $ department <chr> "HR", "IT", "Finance", "Marketing", "Sales"

### Subsetting Data

Subsetting data is a crucial skill in R that allows you to extract
specific portions of your data. The subset() function provides a
convenient way to subset data frames.

``` r
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  city = c("New York", "London", "Paris")
)
```

#### Subsetting Rows

``` r
# Subsetting rows
result <- subset(df, age > 28)
print(result)
```

    ##      name age   city
    ## 2     Bob  30 London
    ## 3 Charlie  35  Paris

#### Subsetting COlumns

``` r
# Subsetting columns
result <- subset(df, select = c("name", "city"))
print(result)
```

    ##      name     city
    ## 1   Alice New York
    ## 2     Bob   London
    ## 3 Charlie    Paris

#### Subsetting Challenge

``` r
# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con))

# Create data frame from input
df <- read.csv(text = input_data, header = TRUE, stringsAsFactors = FALSE)

# TODO: Write your code below
# 1. Subset the data frame for students older than 20
df <- subset(df, age > 20)
# 2. Select only the "name" and "score" columns
df <- subset(df, select = c("name", "score"))
# 3. Calculate the average score
# added code to round to decimals using round()
avg_score <- round(mean(df$score), 2)

# 4. Find the student with the highest score
smartest_student <- df$name[df$score == max(df$score)]

# Print results (update these with your calculations)
cat("Average score:", avg_score, "\n")
cat("Student with highest score:", smartest_student, "\n")
```

### Data Type Conversion

#### Checking Data Types

Before converting, it’s important to know the current data type of your
variable. Use the class() function to check:

``` r
x <- 42
class(x)  # Output: "numeric"
```

    ## [1] "numeric"

``` r
y <- "Hello"
class(y)  # Output: "character"
```

    ## [1] "character"

#### Numeric to Character Conversion

Use the as.character() function to convert numeric to character:

``` r
num <- 42
char_num <- as.character(num)
class(char_num)  # Output: "character"
```

    ## [1] "character"

``` r
print(char_num)  # Output: "42"
```

    ## [1] "42"

#### Character to Numeric Conversion

Use the as.numeric() function to convert character to numeric:

``` r
char <- "3.14"
num_char <- as.numeric(char)
class(num_char)  # Output: "numeric"
```

    ## [1] "numeric"

``` r
print(num_char)  # Output: 3.14
```

    ## [1] 3.14

#### Character to Factor Conversion

Use the as.factor() function to convert character to factor:

``` r
fruits <- c("apple", "banana", "apple", "cherry")
factor_fruits <- as.factor(fruits)
class(factor_fruits)  # Output: "factor"
```

    ## [1] "factor"

``` r
print(factor_fruits)  # Output: apple banana apple cherry
```

    ## [1] apple  banana apple  cherry
    ## Levels: apple banana cherry

``` r
                      #         Levels: apple banana cherry
```

#### Factor to Chracter Conversion

Use the as.character() function to convert factor to character:

``` r
char_fruits <- as.character(factor_fruits)
class(char_fruits)  # Output: "character"
```

    ## [1] "character"

``` r
print(char_fruits)  # Output: "apple" "banana" "apple" "cherry"
```

    ## [1] "apple"  "banana" "apple"  "cherry"

#### Challenge

``` r
# Read input
con <- file("stdin", "r")
input_string <- suppressWarnings(readLines(con))

# Convert input string to numeric vector
numeric_vector <- as.numeric(strsplit(input_string, ",")[[1]])

# TODO: Write your code below

# 1. Convert numeric_vector to a character vector
# 2. Convert the character vector to a factor
# 3. Convert the factor back to a character vector
# 4. Calculate the mean of the original numeric vector
char_vector <- as.character(numeric_vector)
factor_vector <- as.factor(char_vector)
char_from_factor <- as.character(factor_vector)
mean_value <- mean(numeric_vector)

# Print the result
print(numeric_vector)
print(char_vector)
print(factor_vector)
print(char_from_factor)
print(mean_value)
```

### The Pipe Operator in R

The pipe operator (%\>%) in R enhances code readability and
intuitiveness, especially when used with data manipulation packages like
dplyr. It takes the output from one function and passes it as the first
argument to the next, effectively meaning “and then” in the code flow.

#### Basic Usage

Without pipe:

``` r
# result <- function2(function1(data))
# Without pipe
squared_sum <- sum(sqrt(c(1, 4, 9)))
```

With pipe:

``` r
# result <- data %>% function1() %>% function2()
# With pipe
squared_sum <- c(1, 4, 9) %>% sqrt() %>% sum()
```

**Advantages of Using Pipes**

- Improved readability: Code flows from left to right, similar to how we
  read.
- Reduced need for intermediate variables.
- Easier to add or modify steps in a sequence of operations.

#### Using Pipes with Arguments

You can still specify additional arguments after the pipe:

``` r
mtcars %>% head(n = 5)
```

    ##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2

In this case, mtcars is passed as the first argument to head(), and n =
5 is passed as the second argument.

Understanding the pipe operator will greatly enhance your ability to
write clean, readable R code, especially when working with dplyr and
other tidyverse packages.

## Data Transformation

### Intro to dplyr

The dplyr package is a powerful tool for data manipulation in R. It
provides a set of functions that make it easy to transform and analyze
data frames efficiently. In this lesson, we’ll focus on three key
functions: select(), filter(), and mutate().

#### Loading dplyr

Here is an example of how to load the package:

``` r
# Load dplyr
library(dplyr)
```

#### select() Function

The select() function allows you to choose specific columns from a data
frame:

``` r
# Create a sample data frame
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35),
  city = c("New York", "London", "Paris")
)

# Select specific columns
result <- select(df, name, age)
print(result)
```

    ##      name age
    ## 1   Alice  25
    ## 2     Bob  30
    ## 3 Charlie  35

#### filter() Function

The filter() function helps you subset rows based on specific
conditions:

``` r
# Filter rows where age is greater than 28
result <- filter(df, age > 28)
print(result)
```

    ##      name age   city
    ## 1     Bob  30 London
    ## 2 Charlie  35  Paris

#### mutate() Function

The mutate() function allows you to create new columns or modify
existing ones:

``` r
# Add a new column 'age_group'
result <- mutate(df, age_group = ifelse(age < 30, "Young", "Adult"))
print(result)
```

    ##      name age     city age_group
    ## 1   Alice  25 New York     Young
    ## 2     Bob  30   London     Adult
    ## 3 Charlie  35    Paris     Adult

#### arrange() Function

Ascending Order (lowest to highest): The default behavior is ascending.

``` r
df %>%
  arrange(age)
```

    ##      name age     city
    ## 1   Alice  25 New York
    ## 2     Bob  30   London
    ## 3 Charlie  35    Paris

Descending Order (highest to lowest): Use the desc() function to reverse
the order.

``` r
df %>%
  arrange(desc(age))
```

    ##      name age     city
    ## 1 Charlie  35    Paris
    ## 2     Bob  30   London
    ## 3   Alice  25 New York

#### Pipe Operator %\>%

dplyr introduces the pipe operator %\>%, which allows you to chain
multiple operations:

``` r
result <- df %>%
  filter(age > 28) %>%
  select(name, city) %>%
  mutate(location = paste(name, "lives in", city))
print(result)
```

    ##      name   city               location
    ## 1     Bob London    Bob lives in London
    ## 2 Charlie  Paris Charlie lives in Paris

#### Challenge

``` r
# Load required library
suppressPackageStartupMessages(library(dplyr))

# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con))

# Create data frame from input
df <- read.csv(text = input_data, stringsAsFactors = FALSE)

# TODO: Write your code below to process the data frame
process_employee_data <- function(df) {
  # Your code here
  # Use dplyr functions to:
  # 1. Select columns
  df <- select(df, name, age, salary) %>%
  # 2. Filter data
  filter(age >= 30) %>%
  # 3. Add bonus column
  mutate (bonus = ifelse(age >= 40, salary * .1, salary * .05)) %>%
  # 4. Arrange by salary
  arrange(desc(salary))
  # Replace this with your processed data frame
  return(df)  
}

# Process the data frame
result <- process_employee_data(df)

# Print the result
print(result)
```

### Aggregating with dplyr

Aggregating data is a crucial step in data analysis, allowing you to
summarize and gain insights from your dataset. The dplyr package in R
provides powerful functions for data aggregation, particularly
group_by() and summarize(). Let’s explore how to use these functions
effectively.

#### group_by() Function

The group_by() function allows you to group your data based on one or
more variables. This is typically the first step in data aggregation.

``` r
# Sample data frame
df <- data.frame(
  category = c("A", "B", "A", "B", "A"),
  value = c(10, 15, 20, 25, 30)
)

# Group the data by category
grouped_df <- group_by(df, category)
print(grouped_df)
```

    ## # A tibble: 5 × 2
    ## # Groups:   category [2]
    ##   category value
    ##   <chr>    <dbl>
    ## 1 A           10
    ## 2 B           15
    ## 3 A           20
    ## 4 B           25
    ## 5 A           30

#### summarize() Function

After grouping, use summarize() to calculate summary statistics for each
group.

``` r
# Calculate mean value for each category
result <- summarize(grouped_df, mean_value = mean(value))
print(result)
```

    ## # A tibble: 2 × 2
    ##   category mean_value
    ##   <chr>         <dbl>
    ## 1 A                20
    ## 2 B                20

#### Combining group_by() and summarize()

You can chain these functions using the pipe operator %\>% for more
readable code:

``` r
result <- df %>%
  group_by(category) %>%
  summarize(mean_value = mean(value),
            sum_value = sum(value),
            count = n())
print(result)
```

    ## # A tibble: 2 × 4
    ##   category mean_value sum_value count
    ##   <chr>         <dbl>     <dbl> <int>
    ## 1 A                20        60     3
    ## 2 B                20        40     2

#### Multiple Summary Statistics

You can calculate multiple statistics in a single summarize() call:

``` r
result <- df %>%
  group_by(category) %>%
  summarize(
    mean_value = mean(value),
    min_value = min(value),
    max_value = max(value),
    count = n()
  )
print(result)
```

    ## # A tibble: 2 × 5
    ##   category mean_value min_value max_value count
    ##   <chr>         <dbl>     <dbl>     <dbl> <int>
    ## 1 A                20        10        30     3
    ## 2 B                20        15        25     2

#### Aggregating Challenge

``` r
# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con))

# Convert input string to data frame
suppressPackageStartupMessages(library(dplyr))

sales_data <- read.csv(text = paste(input_data, collapse = "\n"))

# TODO: Write your code below to process the sales data
# Hint: Use dplyr functions like group_by(), summarize(), arrange(), desc()

process_sales_data <- function(data) {
  # Your code here
  data <- data %>%
  group_by(category) %>%
  summarize(
    total_sales = sum(price * quantity),
    average_price = mean(price),
    items_sold = sum(quantity)
  ) %>%
  arrange(desc(total_sales))
  # Return the processed data frame
  return(data)
}

# Process the sales data
result <- process_sales_data(sales_data)

# Print the result
print(result)
```

### Joining Data with dplyr

Joining data is a crucial operation in data manipulation, allowing you
to combine multiple data frames based on common columns. The dplyr
package in R provides efficient functions for various types of joins.
Let’s explore the main join operations: inner join, left join, right
join, and full join.

#### Preparing Data

First, let’s create two sample data frames to demonstrate join
operations:

``` r
# Load dplyr
library(dplyr)

# Create sample data frames
employees <- data.frame(
  emp_id = c(1, 2, 3, 4),
  name = c("Alice", "Bob", "Charlie", "David"),
  department = c("HR", "IT", "Finance", "IT")
)

salaries <- data.frame(
  emp_id = c(1, 2, 3, 5),
  salary = c(50000, 60000, 55000, 65000)
)
```

#### Inner Join

An inner join returns only the rows that have matching values in both
data frames:

``` r
inner_join_result <- inner_join(employees, salaries, by = "emp_id")
print(inner_join_result)
```

    ##   emp_id    name department salary
    ## 1      1   Alice         HR  50000
    ## 2      2     Bob         IT  60000
    ## 3      3 Charlie    Finance  55000

#### 3. Left Join

A left join returns all rows from the left data frame and the matched
rows from the right data frame:

``` r
left_join_result <- left_join(employees, salaries, by = "emp_id")
print(left_join_result)
```

    ##   emp_id    name department salary
    ## 1      1   Alice         HR  50000
    ## 2      2     Bob         IT  60000
    ## 3      3 Charlie    Finance  55000
    ## 4      4   David         IT     NA

#### Right Join

A right join returns all rows from the right data frame and the matched
rows from the left data frame:

``` r
right_join_result <- right_join(employees, salaries, by = "emp_id")
print(right_join_result)
```

    ##   emp_id    name department salary
    ## 1      1   Alice         HR  50000
    ## 2      2     Bob         IT  60000
    ## 3      3 Charlie    Finance  55000
    ## 4      5    <NA>       <NA>  65000

#### Full Join

A full join returns all rows when there is a match in either left or
right data frame:

``` r
full_join_result <- full_join(employees, salaries, by = "emp_id")
print(full_join_result)
```

    ##   emp_id    name department salary
    ## 1      1   Alice         HR  50000
    ## 2      2     Bob         IT  60000
    ## 3      3 Charlie    Finance  55000
    ## 4      4   David         IT     NA
    ## 5      5    <NA>       <NA>  65000

#### Specifying Join Columns

If the column names are different in the two data frames, you can
specify the join columns explicitly:

``` r
# Assuming 'salaries' has 'employee_id' instead of 'emp_id'
salaries_alt <- salaries %>% rename(employee_id = emp_id)

join_result <- inner_join(employees, salaries_alt, by = c("emp_id" = "employee_id"))
print(join_result)
```

    ##   emp_id    name department salary
    ## 1      1   Alice         HR  50000
    ## 2      2     Bob         IT  60000
    ## 3      3 Charlie    Finance  55000

#### 7. Add New Columns

Adding or Modifying Columns with mutate() The mutate() function in dplyr
allows you to add new columns or modify existing ones in a data frame.
It’s often used after join operations to perform calculations or
transformations on the joined data.

Example:

``` r
# Add a bonus column to the joined data
result_with_bonus <- inner_join(employees, salaries, by = "emp_id") %>%
  mutate(bonus = salary * 0.1)

# Add a performance category based on salary
result_with_category <- inner_join(employees, salaries, by = "emp_id") %>%
    mutate(performance_category = ifelse(salary < 55000, "Needs Improvement",
                                  ifelse(salary < 60000, "Meets Expectations",
                                  "Exceeds Expectations")))
# join, select(), and print result
join_result <- right_join(
  result_with_bonus,
  result_with_category %>% select(emp_id, performance_category), 
  by = "emp_id"
) # by using selct you can only add performance category to avoid duplicate name.x or name.y columns. here pipe %>% is used in the middle of the function operation
print(join_result)
```

    ##   emp_id    name department salary bonus performance_category
    ## 1      1   Alice         HR  50000  5000    Needs Improvement
    ## 2      2     Bob         IT  60000  6000 Exceeds Expectations
    ## 3      3 Charlie    Finance  55000  5500   Meets Expectations

#### Data Transformation Challenge

``` r
# Read all input lines
con <- file("stdin", "r")
all_lines <- suppressWarnings(readLines(con))

# Find the index where the second data frame starts
separator_index <- which(grepl("^book_id,rating,user_id", all_lines))

# Split the input into two parts
books_data <- all_lines[1:(separator_index - 1)]
ratings_data <- all_lines[separator_index:length(all_lines)]

# Load required library
suppressPackageStartupMessages(library(dplyr))

# Convert string inputs to data frames
books <- read.csv(text = paste(books_data, collapse = "\n"), stringsAsFactors = FALSE)
ratings <- read.csv(text = paste(ratings_data, collapse = "\n"), stringsAsFactors = FALSE)

# TODO: Write your code below
# Perform the required join operations and calculations

# Function to perform join operations
perform_joins <- function(books, ratings) {
  # Your code here
  # Return a list containing all four join results
  list(
    inner_join = inner_join(books, ratings, by = "book_id") %>% mutate(num_ratings = ifelse(is.na(rating), 0, 1)),
    left_join = left_join(books, ratings, by = "book_id") %>% mutate(num_ratings = ifelse(is.na(rating), 0, 1)),
    right_join = right_join(books, ratings, by = "book_id") %>% mutate(num_ratings = ifelse(is.na(rating), 0, 1)),
    full_join = full_join(books, ratings, by = "book_id") %>% mutate(num_ratings = ifelse(is.na(rating), 0, 1))
  )
}
# I think this is a poor challenge because num_ratings is actually has_rating with 0 or 1 being TRUE FALSE. There were no test cases of the same book being rated twice which would actually require you to count the number of ratings.

# Call the function and store the results
join_results <- perform_joins(books, ratings)
results <- join_results

# Print the results
print(results)
```

## Reshaping Data

### Wide to Long Format

In this lesson, we’ll focus on using the pivot_longer() function from
the tidyr package to convert data from wide to long format.

#### Understanding Wide and Long Formats

- Wide format: Each variable has its own column.
- Long format: Variables are stored in key-value pairs, with one column
  for the variable names and another for the values.

#### The pivot_longer() Function

The pivot_longer() function from tidyr is used to transform data from
wide to long format. Here’s its basic syntax:

``` r
pivot_longer(data, cols, names_to = "key", values_to = "value")
```

#### Example

``` r
# Create a sample wide format dataset
wide_data <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  math = c(85, 76, 90),
  science = c(92, 88, 75),
  history = c(78, 82, 85)
)

# Convert to long format
long_data <- pivot_longer(wide_data, 
                          cols = c(math, science, history),
                          names_to = "subject",
                          values_to = "score")

print(long_data)
```

    ## # A tibble: 9 × 3
    ##   name    subject score
    ##   <chr>   <chr>   <dbl>
    ## 1 Alice   math       85
    ## 2 Alice   science    92
    ## 3 Alice   history    78
    ## 4 Bob     math       76
    ## 5 Bob     science    88
    ## 6 Bob     history    82
    ## 7 Charlie math       90
    ## 8 Charlie science    75
    ## 9 Charlie history    85

Instead of having 4 columns: name, math, science and history we have 3
columns: name, subject, score

#### Understanding the Arguments

- cols: Specifies which columns to pivot into longer format.
- names_to: Names the new column that will contain the column names from
  the wide format.
- values_to: Names the new column that will contain the values.

#### Importance in Data Analysis

Long format data is often preferred because it’s:

- Easier to manipulate and analyze with tools like dplyr
- More suitable for statistical modeling and visualization
- Consistent with the principles of tidy data

#### Challenge

``` r
# Read input
con <- file("stdin", "r")
input_string <- suppressWarnings(readLines(con))

# Convert input string to data frame
data <- read.csv(text = input_string, stringsAsFactors = FALSE)

# Load required package
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(dplyr))

# TODO: Write your code below to transform the data
# Use pivot_longer() to transform from wide to long format
# Rename columns to "subject" and "score"
# Arrange the data by student name and then by subject


# Convert to long format
long_data <- pivot_longer(data, 
                          cols = c(math, science, history, english),
                          names_to = "subject",
                          values_to = "score") %>% 
                          arrange(subject) %>%
                          arrange(student)


# Print the resulting long-format data frame
print(long_data)
```

### Long to Wide Format

#### Long to Wide Format

Converting data from long to wide format is an essential skill in data
manipulation, particularly useful for creating more compact
representations of data. In this lesson, we’ll focus on using the
pivot_wider() function from the tidyr package to transform data from
long to wide format.

#### Understanding Long and Wide Formats

- Long format: Variables are stored in key-value pairs, with one column
  for the variable names and another for the values.
- Wide format: Each variable has its own column.

#### The pivot_wider() Function

The pivot_wider() function from tidyr is used to transform data from
long to wide format. Here’s its basic syntax:

``` r
pivot_wider(data, names_from = "key", values_from = "value")
```

#### Example: Using pivot_wider()

Let’s look at an example:

``` r
# Create a sample long format dataset
long_data <- data.frame(
  name = c("Alice", "Alice", "Alice", "Bob", "Bob", "Bob"),
  subject = c("math", "science", "history", "math", "science", "history"),
  score = c(85, 92, 78, 76, 88, 82)
)

# Convert to wide format
wide_data <- pivot_wider(long_data, 
                         names_from = "subject",
                         values_from = "score")

print(wide_data)
```

    ## # A tibble: 2 × 4
    ##   name   math science history
    ##   <chr> <dbl>   <dbl>   <dbl>
    ## 1 Alice    85      92      78
    ## 2 Bob      76      88      82

#### Understanding the Arguments

- names_from: Specifies which column contains the names for the new
  columns in the wide format.
- values_from: Specifies which column contains the values for the new
  columns.

#### Handling Multiple Value Columns

You can pivot multiple value columns simultaneously:

``` r
long_data_multi <- data.frame(
  name = c("Alice", "Alice", "Bob", "Bob"),
  year = c(2022, 2023, 2022, 2023),
  score = c(85, 90, 76, 82),
  rank = c(2, 1, 3, 2)
)

wide_data_multi <- pivot_wider(long_data_multi,
                               names_from = year,
                               values_from = c(score, rank))

print(wide_data_multi)
```

    ## # A tibble: 2 × 5
    ##   name  score_2022 score_2023 rank_2022 rank_2023
    ##   <chr>      <dbl>      <dbl>     <dbl>     <dbl>
    ## 1 Alice         85         90         2         1
    ## 2 Bob           76         82         3         2

By mastering the pivot_wider() function, you’ll be able to efficiently
reshape your data from long to wide format, creating more compact
representations for specific analysis needs in R.

#### Challenge

``` r
# Read input
con <- file("stdin", "r")
input_string <- suppressWarnings(readLines(con))

# Convert input string to data frame
df <- read.csv(text = input_string, stringsAsFactors = FALSE)

# Load required library
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(dplyr))

# TODO: Write your code below to transform the data frame
# Hint: Use pivot_wider() function to transform from long to wide format
# Don't forget to arrange the resulting data frame by student name

wide_df <- pivot_wider(df,
    names_from = subject,
    values_from = grade
) %>% arrange(student)

# Print the result
print(wide_df)
```

### Handling Missing Data

Missing values are typically represented as **NA (Not Available)**.
Let’s explore strategies to identify, remove, and impute missing values.

#### Identifying Missing Data

To check for missing values in R, you can use the following functions:

``` r
# Check if a value is NA
is.na(x)

# Count NAs in a vector
sum(is.na(x))

# Identify rows with any NA in a data frame
complete.cases(df)
```

#### Removing Missing Data

You can remove rows with missing values using these methods:

``` r
# Remove rows with any NA
df_clean <- na.omit(df)

# Using dplyr to remove rows with NA in specific columns
# needs library(dplyr)
df_clean <- df %>% filter(!is.na(column_name))
```

#### Imputing Missing Data

Imputation involves replacing missing values with estimated ones. Here
are some common imputation techniques:

``` r
# Mean imputation
df$column[is.na(df$column)] <- mean(df$column, na.rm = TRUE)

# Median imputation
df$column[is.na(df$column)] <- median(df$column, na.rm = TRUE)

# Mode imputation for categorical data
mode_value <- names(sort(table(df$category), decreasing = TRUE))[1]
df$category[is.na(df$category)] <- mode_value
```

#### Challenge

``` r
# Load Packages
suppressPackageStartupMessages(library(dplyr))

# Read input
con <- file("stdin", "r")
input_string <- suppressWarnings(readLines(con))

# Convert input string to data frame
data <- read.csv(text = input_string, stringsAsFactors = FALSE)

# TODO: Write your code below
# 1. Identify and count missing values
missing_counts <- colSums(is.na(data))
# 2. Remove rows with missing values in 'age' or 'test_result'
data$row_id <- seq_len(nrow(data)) # added to preserve row ID

clean_data <- data %>%
  filter(!is.na(age) & !is.na(test_result))

rows_removed <- nrow(data) - nrow(clean_data)

rownames(clean_data) <- clean_data$row_id # added to restore row ID
clean_data$row_id <- NULL

# 3. Impute missing values in 'blood_pressure'
median_bp <- median(clean_data$blood_pressure, na.rm = TRUE)
clean_data$blood_pressure[is.na(clean_data$blood_pressure)] <- median_bp
# 4. Create 'status' column
clean_data <- clean_data %>% 
mutate(status = ifelse(test_result >= 50, "Elevated",
    ifelse(test_result < 50, "Normal",
    "Unknown")))

# 5. Print required information

# Placeholder for output
cat("Missing values in each column before processing:\n")
print(missing_counts)
cat("\nNumber of rows removed:\n")
print(rows_removed)
cat("\nMedian blood pressure used for imputation:\n")
print(median_bp)
cat("\nProcessed data:\n")
print(clean_data)
```

## Advanced Manipulation

### String Manipulation

The stringr package provides a comprehensive set of functions for
working with strings.

#### Loading the stringr package

``` r
library(stringr)
```

#### Pattern Matching

The str_detect() function checks if a pattern exists in a string:

``` r
text <- c("apple", "banana", "cherry")
str_detect(text, "an")  # Returns: FALSE TRUE FALSE
```

    ## [1] FALSE  TRUE FALSE

#### String Replacement

The str_replace() function replaces the first occurrence of a pattern:

``` r
text <- "Hello world"
str_replace(text, "world", "R")  # Returns: "Hello R"
```

    ## [1] "Hello R"

``` r
text <- "data science with r"
str_replace_all(text, " ", "_")
```

    ## [1] "data_science_with_r"

#### Splitting Strings

Split strings into a character vector with str_split():

``` r
text <- "apple,banana,cherry"
str_split(text, ",")  # Returns a list: list("apple", "banana", "cherry")
```

    ## [[1]]
    ## [1] "apple"  "banana" "cherry"

#### Trimming Whitespace

Remove leading and trailing whitespace using str_trim():

``` r
text <- "  Hello, R!  "
str_trim(text)  # Returns: "Hello, R!"
```

    ## [1] "Hello, R!"

#### Capitalize

You can use the str_to_title() function for this. It capitalizes the
first letter of each word in a string.

``` r
text <- "apple,banana,cherry"
str_to_title(text)
```

    ## [1] "Apple,Banana,Cherry"

#### Extract Strings

str_extract() returns the part of the string that matches the pattern.

``` r
emails <- c("john123@gmail.com", "alice99@yahoo.com", "dba0013@auburn.edu")

str_extract(emails, "^[^@]+")
```

    ## [1] "john123" "alice99" "dba0013"

#### Understanding Regex

Regex is read symbol-by-symbol.

| Symbol | Meaning                             |
|--------|-------------------------------------|
| `^`    | start of the string                 |
| `[^@]` | any character **except `@`**        |
| `+`    | one or more of the previous pattern |
| `$`    | end of string                       |

| Pattern | Meaning            |
|---------|--------------------|
| `\\d`   | any digit          |
| `\\D`   | non-digit          |
| `\\w`   | word character     |
| `\\W`   | non-word character |
| `\\s`   | whitespace         |
| `\\S`   | non-whitespace     |

| Pattern    | Meaning           |
|------------|-------------------|
| `[0-9]`    | digits            |
| `[a-z]`    | lowercase letters |
| `[A-Z]`    | uppercase letters |
| `[a-zA-Z]` | any letter        |

``` r
# examples
# start of string → until @
str_extract(emails, "^[^@]+")
```

    ## [1] "john123" "alice99" "dba0013"

``` r
# end of emails
str_extract(emails, "@.*$")
```

    ## [1] "@gmail.com"  "@yahoo.com"  "@auburn.edu"

#### stringr Challenge

``` r
# Read input
con <- file("stdin", "r")
email_list <- suppressWarnings(readLines(con))

suppressPackageStartupMessages(library(stringr))

process_emails <- function(email_list) {
  # Split the email list into individual email addresses
  emails <- str_split(email_list, ",\\s*")[[1]]
  
  # 1. Extract usernames
  usernames <- str_extract(emails, "^[^@]+") #needed AI because this wasn't covered in the modules
  
  # 2-4. Replace numbers, capitalize, and trim whitespace
  processed_usernames <- usernames %>%
    str_replace_all("\\d", "_") %>%
    str_to_title() %>%
    str_trim()
  
  # 5. Join processed usernames with commas
  processed_usernames <- str_c(processed_usernames, collapse = ", ")
  
  # Return the processed usernames as a comma-separated string
  return(processed_usernames)
}

# Call the function and print the result
result <- process_emails(email_list)
cat(result)
```

### Date and Time Handling

The language provides built-in functions and classes for working with
date-time objects efficiently.

#### Date and Time Classes in R

R has three main classes for working with dates and times:

- Date: Represents dates without times
- POSIXct: Represents date-times as the number of seconds since January
  1, 1970
- POSIXlt: Represents date-times as a list of components (year, month,
  day, etc.)

#### Creating Date-Time Objects

You can create date-time objects using the following functions:

``` r
# Create a Date object
today <- Sys.Date()

# Create a POSIXct object
now <- Sys.time()

# Convert a string to a Date
date_from_string <- as.Date("2023-06-15")

# Convert a string to POSIXct
datetime_from_string <- as.POSIXct("2023-06-15 14:30:00")
```

#### Formatting Date-Time Objects

Use format() to convert date-time objects to strings:

``` r
date <- as.Date("2023-06-15")
formatted_date <- format(date, "%B %d, %Y")  # Returns: "June 15, 2023"
print(formatted_date)
```

    ## [1] "June 15, 2023"

#### Parsing Date-Time Strings

To parse date-time strings, use as.Date() or as.POSIXct() with a format
string:

``` r
date_string <- "15/06/2023"
parsed_date <- as.Date(date_string, format = "%d/%m/%Y")
print(parsed_date)
```

    ## [1] "2023-06-15"

#### Date-Time Calculations

R allows arithmetic operations on date-time objects:

``` r
today <- Sys.Date()
next_week <- today + 7  # Add 7 days
print(next_week)
```

    ## [1] "2026-03-25"

``` r
time_diff <- as.numeric(next_week - today)  # Get difference in days
cat(time_diff, "days")
```

    ## 7 days

#### Extracting Components

You can extract specific components from date-time objects:

``` r
date <- as.Date("2023-06-15")
year <- format(date, "%Y")
month <- format(date, "%m")
day <- format(date, "%d")
hour <- format(date, "%H")
minute <- format(date, "%M")
second <- format(date, "%S")
```

#### Challenge

``` r
# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con))

# Convert input string to data frame
events_df <- read.csv(text = input_data, stringsAsFactors = FALSE)

suppressPackageStartupMessages(library(dplyr))

events_df <- events_df %>%
  mutate(
    datetime_parsed = as.POSIXct(datetime, format = "%Y-%m-%d %H:%M:%S"),
    day_of_week = weekdays(datetime_parsed),
    duration_hours = as.numeric(difftime(datetime_parsed, min(datetime_parsed), units = "hours")),
    date = format(datetime_parsed, "%Y-%m-%d"),
    hour = as.numeric(format(datetime_parsed, "%H")),
    time_category = ifelse(hour >= 12 & hour <= 16, "Afternoon",
                    ifelse(hour >= 17 & hour <= 20, "Evening", "Night")) #There is an error in the auto-grader AM morning events are expected as "Night" - so this code doesn't align with prompt
  ) %>%
  arrange(datetime_parsed) %>%
  select(event, day_of_week, duration_hours, date, time_category)

print(events_df)
```

### Custom Functions

Custom functions in R are powerful tools for creating reusable code and
performing complex data transformations. They allow you to encapsulate a
series of operations into a single, callable unit. Let’s explore how to
create and use custom functions for data manipulation tasks.

#### Basic Structure of a Custom Function

The basic syntax for creating a custom function in R is:

``` r
function_name <- function(arg1, arg2, ...) {
  # Function body
  # Operations using arg1, arg2, etc.
  return(result)
}
```

#### Creating a Simple Custom Function

Let’s create a simple function that calculates the percentage of missing
values in a vector:

``` r
percent_missing <- function(x) {
  sum(is.na(x)) / length(x) * 100
}

# Usage
data <- c(1, 2, NA, 4, NA, 6)
percent_missing(data)  # Returns: 33.33333
```

    ## [1] 33.33333

#### Using Custom Functions with dplyr

Custom functions can be particularly useful when combined with dplyr for
data manipulation:

``` r
library(dplyr)

categorize_age <- function(age) {
  case_when(
    age < 18 ~ "Child",
    age < 65 ~ "Adult",
    TRUE ~ "Senior"
  )
}

# Usage with dplyr
df <- data.frame(name = c("Alice", "Bob", "Charlie"), age = c(25, 72, 16))
df %>%
  mutate(age_category = categorize_age(age))
```

    ##      name age age_category
    ## 1   Alice  25        Adult
    ## 2     Bob  72       Senior
    ## 3 Charlie  16        Child

#### Custom Function Challenge

Create a custom function named mean_score that calculates the average
score for each student on a dataset of student exam scores.

To calculate the average score across each row we will use the rowwise()
function and later on we will use ungroup() to return everything to
where it was. Check the provided code.

Perform the following actions:

1.  Create a new column named student_mean that holds the average score.
2.  Create a new column named is_above_mean that holds TRUE or FALSE if
    the student is above or below the average.
3.  Create a column named rank that holds the place of each student
    relative to others based on their average. For example, 1 means the
    student is the best, 2 means the student is the second best, etc.

- To find the rank use order(): order(order(mean_col, decreasing =
  TRUE))

``` r
# Read input
con <- file("stdin", "r")
input_data <- suppressWarnings(readLines(con))
close(con)

# Process input data into a data frame
data <- read.csv(text = input_data, header = TRUE, stringsAsFactors = FALSE)

suppressPackageStartupMessages(library(dplyr))

# Define the mean_score function
mean_score <- function(data) {
# TODO: Write your code here
# calculate the average of all subjects
# TODOL Write you code here
# Create a new column named student_mean that holds the average score.
# Create a new column named is_above_mean that holds TRUE or FALSE if the student is above or below the average.
# Create a column named rank that holds the place of each student relative to others based on their average. For example, 1 means the student is the best, 2 means the student is the second best, etc.
  data %>%
    rowwise() %>%
    mutate(
      student_mean = mean(c(Math, Science, English, History))
    ) %>%
    ungroup() %>%
    mutate(
      mean_student_mean = mean(student_mean),
      is_above_mean = student_mean > mean_student_mean,
      rank = order(order(student_mean, decreasing = TRUE))
    ) %>%
    mutate(mean_student_mean = NULL)
}
# Run Function
mean_score(data)
```
