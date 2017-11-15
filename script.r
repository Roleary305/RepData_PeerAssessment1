library(dplyr)
dataset <- read.csv(unz("activity.zip","activity.csv"))

stepsDayTotal <- group_by(dataset, date) %>% summarise( sum = sum(steps), mean = mean(steps, na.rm = TRUE), median = median(steps))

hist(stepsDayTotal$sum, freq = FALSE)
dev.off()
print(stepsDayTotal)

stepsDaySummary <- data.frame(Date = unique(dataset$Date),
                 sum = tapply(dataset$steps, dataset$Date, FUN = sum),
                 mean = tapply(dataset$steps, dataset$Date, FUN = mean),
				 median = tapply(dataset$steps, dataset$Date, FUN = median))
				 
for (i in seq_along(mrg$steps)){
if (is.na(mrg$steps[i]) == TRUE){mrg$steps[i] <- mrg$mean[i]}

}
