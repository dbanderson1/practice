# ==============================================================================
# PLPA Reproducible Science Exam Practice
# Topics: subsetting, wrangling, pipes, loops/functions, basic linear models
# ==============================================================================

# Load required packages
library(dplyr)
library(tidyr)
library(ggplot2)

# ------------------------------------------------------------------------------
# Sample data frame used throughout (run this first)
# ------------------------------------------------------------------------------
set.seed(42)
df <- data.frame(
  id     = 1:10,
  sex    = rep(c("male", "female"), 5),
  weight = c(75, 65, 90, 55, 85, 70, 95, 60, 80, 72),
  height = c(175, 162, 180, 158, 185, 170, 190, 155, 178, 168)
)

df

# ==============================================================================
# Q1: Extract one column in multiple ways
# ==============================================================================
# You have a data frame called df with columns: id, sex, weight, height
# Write code to extract the weight column using:
#   a) [ ]
#   b) [[ ]]
#   c) $
#   d) select()
#   e) pipe + pull()

# a) single bracket with column name -- returns a one-column data frame
df[, "weight"]

# b) double bracket -- returns the column as a vector
df[["weight"]]

# c) dollar sign -- returns the column as a vector
df$weight

# d) select() from dplyr
select(df, weight)

# e) pipe + pull()
df %>% pull(weight)
df %>% select(weight)

# ==============================================================================
# Q2: Difference between df[ ] and df[[ ]]
# ==============================================================================
# df["weight"]   returns a DATA FRAME with one column named weight
# df[["weight"]] returns the actual weight VECTOR

class(df["weight"])      # "data.frame"
class(df[["weight"]])    # "numeric"


# ==============================================================================
# Q3: Subset rows using ONE condition
# ==============================================================================
# Return all rows where sex == "female"

# a) base R
df[df$sex == "female", ]
#male example
df[df$sex == "male", ]

# b) subset()
subset(df, sex == "female")

# c) dplyr pipe
df %>% filter(sex == "female")


# ==============================================================================
# Q4: Subset rows using two conditions with AND
# ==============================================================================
# Return all rows where sex == "female" AND weight > 70

# a) base R
df[df$sex == "female" & df$weight > 70, ]

# b) subset()
subset(df, sex == "female" & weight > 70)

# c) dplyr pipe
df %>% filter(sex == "female" & weight > 70)


# ==============================================================================
# Q5: Subset rows using two conditions with OR
# ==============================================================================
# Return all rows where sex == "female" OR weight > 90

# a) base R
df[df$sex == "female" | df$weight > 90, ]

# b) subset()
subset(df, sex == "female" | weight > 90)

# c) dplyr pipe
df %>% filter(sex == "female" | weight > 90)


# ==============================================================================
# Q6: Select multiple columns
# ==============================================================================
# Keep only the id and weight columns

# a) base R
df[, c("id", "weight")]

# b) subset()
subset(df, select = c(id, weight))

# c) select() without pipe
select(df, id, weight)

# d) dplyr pipe
df %>% select(id, weight)


# ==============================================================================
# Q7: Filter rows AND select columns in one pipe
# ==============================================================================
# Keep only rows where sex == "male", then keep only id and weight

df %>%
  filter(sex == "male") %>%
  select(id, weight)


# ==============================================================================
# Q8: Create a new column with mutate()
# ==============================================================================
# Create a column called heavy: 1 when weight > 80, 0 otherwise

# a) base R with ifelse
df$heavy <- ifelse(df$weight > 80, 1, 0)

# b) dplyr mutate
df <- df %>%
  mutate(heavy = ifelse(weight > 80, 1, 0))

df

# ==============================================================================
# Q9: Create a transformed column
# ==============================================================================
# Create a new column called log_weight that is the log of weight

# a) base R
df$log_weight <- log(df$weight)

# b) dplyr mutate
df <- df %>%
  mutate(log_weight = log(weight))


# ==============================================================================
# Q10: Remove rows with missing values in one column
# ==============================================================================
# Remove rows where weight is missing (NA)

# a) base R
df[!is.na(df$weight), ]

# b) subset()
subset(df, !is.na(weight))

# c) dplyr pipe
df %>% filter(!is.na(weight))


# ==============================================================================
# Q11: Summarize mean by group
# ==============================================================================
# Calculate mean weight by sex

# a) base R aggregate
aggregate(weight ~ sex, data = df, FUN = mean)

# b) dplyr group_by + summarise
df %>%
  group_by(sex) %>%
  summarise(mean_weight = mean(weight, na.rm = TRUE))


# ==============================================================================
# Q12: Summarize multiple values by group
# ==============================================================================
# For each sex, calculate: mean weight, sd of weight, sample size

df %>%
  group_by(sex) %>%
  summarise(
    mean_weight = mean(weight, na.rm = TRUE),
    sd_weight   = sd(weight, na.rm = TRUE),
    n           = n()
  )

df %>%
  select(weight, height) %>%
  summary()


# ==============================================================================
# Q13: Use the pipe correctly
# ==============================================================================
# Rewrite WITHOUT a pipe:
#   df %>% filter(weight > 80) %>% select(id, weight)

# Nested function version (no pipe)
select(filter(df, weight > 80), id, weight)

# Base R version
df[df$weight > 80, c("id", "weight")]


# ==============================================================================
# Q14: Left join
# ==============================================================================
# df1 has: id, weight
# df2 has: id, sex
# Join df2 onto df1 by id, keeping all rows from df1

df1 <- data.frame(id = 1:5, weight = c(75, 65, 90, 55, 85))
df2 <- data.frame(id = 1:5, sex    = c("male", "female", "male", "female", "male"))

df3 <- left_join(df1, df2, by = "id")

df3

# ==============================================================================
# Q15: Other join types
# ==============================================================================
# a) inner join  -- keeps only MATCHING rows
inner_join(df1, df2, by = "id")

# b) right join  -- keeps all rows from the SECOND data frame
right_join(df1, df2, by = "id")

# c) full join   -- keeps ALL rows from BOTH data frames
full_join(df1, df2, by = "id")

# Quick meanings:
#   left_join  = keep all rows from first data frame
#   right_join = keep all rows from second data frame
#   inner_join = keep only matching rows
#   full_join  = keep all rows from both


# ==============================================================================
# Q16: Pivot from WIDE to LONG
# ==============================================================================
# You have columns: id, weight_t1, weight_t2
# Reshape to long format

df_wide_example <- data.frame(
  id        = 1:3,
  weight_t1 = c(70, 65, 80),
  weight_t2 = c(72, 67, 83)
)

df_long <- df_wide_example %>%
  pivot_longer(
    cols      = c(weight_t1, weight_t2),
    names_to  = "time",
    values_to = "weight"
  )


# ==============================================================================
# Q17: Pivot from LONG to WIDE
# ==============================================================================
# You have columns: id, time, weight
# Reshape so each time point becomes a separate column

df_wide_again <- df_long %>%
  pivot_wider(
    names_from  = time,
    values_from = weight
  )


# ==============================================================================
# Q18: Select, then pivot
# ==============================================================================
# Starting with alpha_average, keep: Time_Point, Crop, mean_evenness
# Then convert to wide format using Crop as new column names

# Sample alpha_average data frame for demonstration
alpha_average <- data.frame(
  Time_Point    = rep(c("T1", "T2"), each = 3),
  Crop          = rep(c("Soil", "Cotton", "Soybean"), 2),
  mean_evenness = c(0.85, 0.78, 0.80, 0.88, 0.75, 0.82)
)

alpha_average %>%
  select(Time_Point, Crop, mean_evenness) %>%
  pivot_wider(
    names_from  = Crop,
    values_from = mean_evenness
  )


# ==============================================================================
# Q19: Calculate new columns after pivoting
# ==============================================================================
# Create: diff.cotton.even = Soil - Cotton
#         diff.soybean.even = Soil - Soybean

alpha_average2 <- alpha_average %>%
  select(Time_Point, Crop, mean_evenness) %>%
  pivot_wider(
    names_from  = Crop,
    values_from = mean_evenness
  ) %>%
  mutate(
    diff.cotton.even  = Soil - Cotton,
    diff.soybean.even = Soil - Soybean
  )


# ==============================================================================
# Q20: Pivot longer for plotting
# ==============================================================================
# From alpha_average2, keep: Time_Point, diff.cotton.even, diff.soybean.even
# Then pivot longer into columns named "diff" and "values"

alpha_average2 %>%
  select(Time_Point, diff.cotton.even, diff.soybean.even) %>%
  pivot_longer(
    cols      = c(diff.cotton.even, diff.soybean.even),
    names_to  = "diff",
    values_to = "values"
  )


# ==============================================================================
# Q21: Basic ggplot after a pipe
# ==============================================================================
# Using the result from Q20, make a line plot:
#   x = Time_Point, y = values, color = diff

alpha_average2 %>%
  select(Time_Point, diff.cotton.even, diff.soybean.even) %>%
  pivot_longer(
    cols      = c(diff.cotton.even, diff.soybean.even),
    names_to  = "diff",
    values_to = "values"
  ) %>%
  ggplot(aes(x = Time_Point, y = values, color = diff)) +
  geom_line(aes(group = diff)) +
  geom_point()


# ==============================================================================
# Q22: Read in a CSV with a relative path
# ==============================================================================
# Read Bull_richness.csv from a folder called data_files

# read.csv("data_files/Bull_richness.csv")   # uncomment if file exists

# Note: a relative path starts from your project location, NOT from the
# computer root.


# ==============================================================================
# Q23: Absolute vs relative paths
# ==============================================================================
# Absolute path -- full location from the computer root:
#   "C:/Users/Derek/Documents/project/data_files/Bull_richness.csv"
#
# Relative path -- location relative to the working directory / project:
#   "data_files/Bull_richness.csv"


# ==============================================================================
# Q24: Simple for loop
# ==============================================================================
# Print the numbers 1 through 5

for (i in 1:5) {
  print(i)
}


# ==============================================================================
# Q25: For loop over a vector
# ==============================================================================
# Double each value in v <- c(2, 4, 6)

v <- c(2, 4, 6)

for (i in v) {
  print(i * 2)
}


# ==============================================================================
# Q26: Save loop output into a data frame
# ==============================================================================
# Initialize with NULL, then build up results using rbind

results_df <- NULL

for (i in 1:5) {
  temp_df    <- data.frame(number = i, squared = i^2)
  results_df <- rbind.data.frame(results_df, temp_df)
}

results_df


# ==============================================================================
# Q27: Write a simple function
# ==============================================================================
# Write a function called my_function that doubles x

my_function <- function(x) {
  return(x * 2)
}


# ==============================================================================
# Q28: Use a function
# ==============================================================================
# Apply my_function to 5  --> expected result: 10

my_function(5)


# ==============================================================================
# Q29: Why use functions for reproducibility?
# ==============================================================================
# Functions reduce copy-and-paste errors, make repeated tasks consistent,
# and let you rerun the same steps exactly the same way.


# ==============================================================================
# Q30: Basic linear model
# ==============================================================================
# Predict weight from height

model <- lm(weight ~ height, data = df)


# ==============================================================================
# Q31: Linear model with two predictors
# ==============================================================================
# Predict weight from height AND sex

model <- lm(weight ~ height + sex, data = df)


# ==============================================================================
# Q32: Linear model with interaction
# ==============================================================================
# Predict weight from height, sex, and their interaction

model <- lm(weight ~ height * sex, data = df)

# Equivalent expanded form (same model):
model <- lm(weight ~ height + sex + height:sex, data = df)


# ==============================================================================
# Q33: View model results
# ==============================================================================
# Get the statistical summary of a fitted model

summary(model)


# ==============================================================================
# Q34: Trick question -- wrong operator
# ==============================================================================
# What is wrong with:  df[df$weight = 80, ]
#
# Answer: uses = (assignment) instead of == (equality test)
#   =  assigns a value
#   == tests equality
#
# Correct code:
df[df$weight == 80, ]


# ==============================================================================
# Q35: One bracket with two dimensions
# ==============================================================================
# What does this return?
#   df[df$weight > 80, ]
#
# Answer: all rows where weight > 80, and ALL columns (the trailing comma
# with nothing after it means "keep all columns")

df[df$weight > 80, ]


# ==============================================================================
# Q36: Subset iris -- one condition
# ==============================================================================
# Subset iris to rows where Species == "setosa"

# a) base R
iris[iris$Species == "setosa", ]

# b) subset()
subset(iris, Species == "setosa")

# c) dplyr pipe
iris %>% filter(Species == "setosa")


# ==============================================================================
# Q37: Subset iris -- two conditions with AND
# ==============================================================================
# Species == "setosa" AND Petal.Width > 0.2

# a) base R
iris[iris$Species == "setosa" & iris$Petal.Width > 0.2, ]

# b) subset()
subset(iris, Species == "setosa" & Petal.Width > 0.2)

# c) dplyr pipe
iris %>% filter(Species == "setosa" & Petal.Width > 0.2)


# ==============================================================================
# Q38: Subset and keep ONE column
# ==============================================================================
# Return only Petal.Width values for rows where Species == "setosa"

# a) base R
iris[iris$Species == "setosa", "Petal.Width"]

# b) subset()
subset(iris, Species == "setosa", select = Petal.Width)

# c) dplyr pipe + pull()
iris %>%
  filter(Species == "setosa") %>%
  pull(Petal.Width)


# ==============================================================================
# Q39: Concept check -- filter() vs select()
# ==============================================================================
# filter() keeps ROWS based on conditions
# select() keeps COLUMNS


# ==============================================================================
# Q40: Concept check -- mutate() vs summarise()
# ==============================================================================
# mutate()    creates or changes columns while keeping the SAME number of rows
# summarise() reduces data to summary values -- often FEWER rows


# ==============================================================================
# Q41: Mini mixed practice -- filter + mutate + select
# ==============================================================================
# Keep rows where sex == "female", create bmi2 = weight / height^2,
# then keep only id and bmi2

df %>%
  filter(sex == "female") %>%
  mutate(bmi2 = weight / height^2) %>%
  select(id, bmi2)


# ==============================================================================
# Q42: Mini mixed practice with OR -- pipe version
# ==============================================================================
# Return id and sex for rows where sex == "female" OR height > 180

df %>%
  filter(sex == "female" | height > 180) %>%
  select(id, sex)


# ==============================================================================
# Q43: Mini mixed practice with OR -- base R version
# ==============================================================================

df[df$sex == "female" | df$height > 180, c("id", "sex")]


# ==============================================================================
# Q44 & Q45: Quick reference / memorization list
# ==============================================================================
#
# Extraction:
#   df[, "col"]         -- vector (drops to vector with comma)
#   df["col"]           -- one-column data frame
#   df[["col"]]         -- vector (always)
#   df[df$col == val, ] -- row subset, keep all columns
#
# dplyr verbs:
#   filter()    -- keep rows
#   select()    -- keep columns
#   mutate()    -- add / change columns, same row count
#   summarise() -- collapse to summary rows
#   group_by()  -- define groups for summarise()
#
# Joins:
#   left_join()  -- all rows from first df
#   right_join() -- all rows from second df
#   inner_join() -- only matching rows
#   full_join()  -- all rows from both
#
# Reshaping:
#   pivot_longer() -- wide to long
#   pivot_wider()  -- long to wide
#
# Pipe:
#   %>%  -- passes result of left side into first argument of right side
#
# Linear models:
#   lm(y ~ x,        data = df)  -- simple regression
#   lm(y ~ x1 + x2,  data = df)  -- multiple regression
#   lm(y ~ x1 * x2,  data = df)  -- with interaction
#   summary(model)               -- view results
#
# Operators:
#   |   OR
#   &   AND
#   ==  equality test (NOT assignment)
#   =   assignment (use <- instead inside R scripts)

# ==============================================================================
# End of script
# ==============================================================================