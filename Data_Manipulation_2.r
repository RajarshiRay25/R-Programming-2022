# install tidyr to clean and organise data

install.packages("tidyr")
library("tidyr")

marks_data <- data.frame(
  ID=c(1,10),
  marks.1 = c(411,723,325,456,579,612,709,513,527,379),
  marks.2 = c(123,300,400,500,600,654,789,906,413,567),
  marks.3 = c(1457,1000,569,896,956,2345,780,599,1023,678)
)

# Gather() - Reshaping data from wide format to long format

long <- marks_data %>% gather(marks, ResponseTime, marks.1:marks.3)
View(long)

# Separate() - splits a single column into multiple columns

long_separate <- long %>% separate(marks, c("value", "counter"))

View(long_separate)

# unite() - combines multiple columns into a single column

long_unite <- long_separate %>% unite(marks, value, counter, sep = ".")

View(long_unite)
