# R Exercise 02 — Working with Data Frames in a Biotechnology Context
# ------------------------------------------------------------------
# Context:
# You are analyzing a small experimental dataset from a PCR quantification
# experiment. A researcher measured fluorescence values (a proxy for DNA
# concentration) of three different samples across four measurement cycles.
#
# Your task is to manually construct a small data frame, explore it, extract
# values, and compute simple summaries.
#
# Task:
#
# 1. Create a data frame named `pcr_data` with the following columns:
#    - sample_id : "A", "A", "A", "A", "B", "B", "B", "B", "C", "C", "C", "C"
#    - cycle     : 1, 2, 3, 4 repeated for each sample
#    - fluorescence : 120, 180, 250, 320, 95, 140, 210, 260, 160, 240, 310, 400
#
#    (Hint: you may use c() for each column)
#
# 2. Print the full data frame to the console.
#
# 3. Extract (without using packages):
#    - All fluorescence values of sample B
#    - All rows where fluorescence is above 300
#    - The fluorescence value at sample C, cycle 2 (single value)
#
# 4. Compute simple summaries:
#    - The mean fluorescence for each sample (A, B, C)
#    - The maximum fluorescence observed in the entire dataset
#
# 5. Add a new column named `log_fluorescence` which contains the natural
#    logarithm of each fluorescence value.
#
# 6. Print the updated data frame.
#
# Rules:
# - Base R only (no tidyverse yet).
# - Use simple, beginner-friendly syntax.
# - Avoid loops if possible (try to use vectorized operations).
# - Keep your code readable and clean.

pcr_data <- data.frame(
    sample_id = c("A", "A", "A", "A", "B", "B", "B", "B", "C", "C", "C", "C"),
    #alternative: sample_id = rep(c("A", "B", "C"), each = 4)
    cycle = rep(c(1, 2, 3, 4), 3),
    fluorescence = c(120, 180, 250, 320, 95, 140, 210, 260, 160, 240, 310, 400),
)

print(pcr_data)

# pcr_data$sample_id
# pcr_data$cycle
# pcr_data$fluorescence

pcr_data$fluorescence[pcr_data$sample_id == "B"]
pcr_data$fluorescence[pcr_data$fluorescence>=300]
pcr_data$fluorescence[pcr_data$cycle == 2, pcr_data$sample_id == "C"]
