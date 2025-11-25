# You are working in a biotechnology lab that measures the growth
# of a bacterial strain under controlled conditions. During an experiment,
# the optical density (OD600) was recorded at six consecutive time points.
#
# Task:
# 1. Create an R vector named `od_values` containing six OD600 measurements:
#    0.12, 0.18, 0.31, 0.55, 0.80, 1.10
#
# 2. Create another vector named `time_hours` representing the time points
#    at which the data were collected (in hours): 0, 1, 2, 3, 4, 5
#
# 3. Calculate:
#    - the mean OD600 value
#    - the maximum OD600 value
#    - the length of the vector
#
# 4. Print all results to the console.
#
# Rules:
# - Do NOT create a data frame yet — vectors only.
# - Keep the code as simple as possible.
# - No loops, no apply-functions, no packages.

od_values = c(0.12, 0.18, 0.31, 0.55, 0.80, 1.10)
time_hours = c(0, 1, 2, 3, 4, 5)

mean(od_values)
max(od_values)
length(od_values)

