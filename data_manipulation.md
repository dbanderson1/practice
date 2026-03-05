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

### Subsetting Data

### Data Type Conversion

### The Pipe Operator in R

## Data Transformation

### Intro to dplyr

### Aggregating with dplyr

### Joining Data with dplyr
