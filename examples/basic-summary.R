data <- data.frame(
  group = c("A", "A", "B", "B", "B"),
  value = c(12, 15, 10, 18, NA)
)

print("Rows and columns:")
print(dim(data))

print("Missing values by column:")
print(colSums(is.na(data)))

print("Summary statistics:")
print(summary(data))

print("Mean value by group:")
print(aggregate(value ~ group, data = data, FUN = mean, na.rm = TRUE))
