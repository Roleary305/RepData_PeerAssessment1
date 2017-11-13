library(dplyr)
dataset <- read.csv(unz("activity.zip","activity.csv"))

stepsDayTotal <- group_by(dataset, date) %>% summarise( sum = sum(steps), mean = mean(steps, na.rm = TRUE), median = median(steps))

hist(stepsDayTotal$sum, freq = FALSE)
dev.off()
print(stepsDayTotal)