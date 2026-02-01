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
