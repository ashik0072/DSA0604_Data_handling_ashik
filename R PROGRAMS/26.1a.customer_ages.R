# Load the data
data <- read.table(text = "CustomerID Age SatisfactionScore
1            25   4
2            30   5
3            35   3
4            28   4
5            40   5", header = TRUE)

# Create the histogram
hist(data$Age, main = "Distribution of customer ages", xlab = "Customer age")

# Add labels to the y-axis
text(x = 0, y = 1, labels = "Number of customers", srt = 90)
