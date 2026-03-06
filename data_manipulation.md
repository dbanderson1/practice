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

### The Pipe Operator in R

## Data Transformation

### Intro to dplyr

### Aggregating with dplyr

### Joining Data with dplyr
