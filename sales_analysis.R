# AI Assistance Declaration:
# I used ChatGPT (GPT-6, October 31, 2026) for documentation planning and
# formatting suggestions. Prompts used are documented in README.md and
# Reflection.md. I will verify execution and calculations independently.
# All final calculations and verification are my responsibility.

# Purpose: Demonstrate a basic summary workflow with fictional sales data.
# Input: A small synthetic data frame created below.
# Output: Category-level revenue summary printed to the console and saved
#         as sales_summary.csv in the current working directory.

sales_data <- data.frame(
  date = as.Date(c(
    "2026-01-05", "2026-01-06", "2026-01-07",
    "2026-01-08", "2026-01-09", "2026-01-10"
  )),
  category = c("Books", "Stationery", "Books", "Accessories",
               "Stationery", "Accessories"),
  units = c(2, 5, 1, 3, 2, 1),
  unit_price = c(12.50, 3.00, 12.50, 8.00, 3.00, 8.00)
)

# Calculate revenue for each illustrative row.
sales_data$revenue <- sales_data$units * sales_data$unit_price

# Summarize revenue by category.
sales_summary <- aggregate(
  revenue ~ category,
  data = sales_data,
  FUN = sum
)

# Sort the summary alphabetically for consistent presentation.
sales_summary <- sales_summary[order(sales_summary$category), ]

# Display results and write a CSV output.
print(sales_summary)
write.csv(sales_summary, "sales_summary.csv", row.names = FALSE)
