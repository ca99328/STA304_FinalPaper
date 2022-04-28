# Sample of the cleaning process of the data set. 
# Which is removing the NAs (missing data) from the dataset.
# The data was named "rainfall"

for (i in 2:length(rainfall)) {
  print('Variable')
  print(mean(rainfall[[i]], na.rm=TRUE))
  print(median(rainfall[[i]], na.rm=TRUE))
  print(sd(rainfall[[i]], na.rm=TRUE))
  print(max(rainfall[[i]], na.rm=TRUE) - min(rainfall[[i]], na.rm=TRUE))
  print(IQR(rainfall[[i]], na.rm=TRUE))
  print(skewness(rainfall[[i]], na.rm=TRUE))
  print(kurtosis(rainfall[[i]], na.rm=TRUE))
}

