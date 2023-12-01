# Count the number of customers for each satisfaction score
satisfaction_counts <- table(data$SatisfactionScore)

# Calculate the percentages
satisfaction_percentages <- satisfaction_counts / sum(satisfaction_counts) * 100

# Create the pie chart
pie(satisfaction_percentages, labels = names(satisfaction_counts), main = "Distribution of customer satisfaction scores")

# Add labels to the pie chart slices
pie_labels <- paste0(names(satisfaction_counts), ": ", round(satisfaction_percentages, 2), "%")
text(pie_labels, pos = 0.5, col = "white")