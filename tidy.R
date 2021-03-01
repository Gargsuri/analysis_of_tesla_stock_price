library(dplyr)
library(tidyr)
tsla<-read.csv("C:/Users/nikag/Downloads/TSLA.csv")
str(tsla)

table (complete.cases(tsla))
summary  (tsla [!complete.cases(tsla),])

tsla<-tsla %>%
  pivot_longer(cols = c(`High`, `Low`), names_to = "Result", values_to = "Value")
tsla
tsla<-tsla %>%
  separate(
    col =Date,
    into = c("Year", "Month","Date"),
    convert = TRUE
  )
tsla
tsla<-tsla %>% 
  unite(col = "Date", Year,Month,Date)
tsla
write.csv(tsla, file = "C:/Users/nikag/Downloads/TSLA1.csv")

