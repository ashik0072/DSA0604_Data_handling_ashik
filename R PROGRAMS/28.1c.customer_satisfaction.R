# Create sample data
data <- read.table(text = "CustomerID, Age, SatisfactionScore
1, 25, 4
2, 30, 5
3, 35, 3
4, 28, 4
5, 40, 5", header = TRUE)

# Create a data frame with satisfaction counts for each satisfaction score and age group
satisfaction_counts_by_age <- sapply(data, function(x) {
  xtabs(x ~ Age, data = data)
})

# Create the stacked bar chart
library(ggplot2)

ggplot(data = satisfaction_counts_by_age, aes(x = Age, y = Freq)) +
  geom_bar(stat = "identity", position = "stack") +
  facet_wrap(~ SatisfactionScore) +
  labs(
    title = "Distribution of Customer Satisfaction Scores by Age Group",
    x = "Age",
    y = "Number of Customers"
  )
