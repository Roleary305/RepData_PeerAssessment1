---
title: "Reproducible Research: Peer Assessment 1"
output: 
  html_document:
    keep_md: true
---


## Loading and preprocessing the data


```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

## What is mean total number of steps taken per day?

```r
stepsDayTotal <- group_by(dataset, date = as.factor(as.numeric(date))) %>% summarise( sum = sum(steps), mean = mean(steps, na.rm = TRUE), median = median(steps))

#hist(stepsDayTotal$sum)

print(stepsDayTotal)
```

```
## # A tibble: 1 x 4
##     date   sum    mean median
##   <fctr> <int>   <dbl>  <int>
## 1   <NA>    NA 37.3826     NA
```


## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
