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
