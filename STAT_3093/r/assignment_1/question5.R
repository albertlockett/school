# STAT 3093 Assignment 1
# Question 5 (Chapter 1, Question 56, Part C, page 43)
# Albert Lockett (3254354, k44if@unb.ca)

ed <- c(
  0, 0, 0, 0, 0.1, 0.1, 0.1, 0.1, 0.2, 0.2, 0.3, 0.3,
  0.3, 0.4, 0.5, 0.7, 0.8, 1.0, 1.5, 2.7, 2.8, 3.5, 4.0, 8.9,
  9.2, 11.7, 21.0
)

non_ed <- c(
  0, 0, 0, 0, 0, 0.1, 0.1, 0.1, 0.1, 0.2, 0.2, 0.2,
  0.3, 0.3, 0.3, 0.4, 0.5, 0.5, 0.6, 0.8, 0.9, 1.0, 1.2, 1.4,
  6.4, 7.9, 8.3, 8.7, 9.1, 9.6, 9.9, 11.0, 11.5, 12.2, 12.7, 14.0,
  16.6, 17.8
)

df1 <- rbind(
  data.frame(val=ed, ed=rep('ED', length(ed))),
  data.frame(val=non_ed, ed=rep('non-ED', length(non_ed)))
)

box_lot <- ggplot(df1, aes(ed, val)) + 
  geom_boxplot(aes(fill=ed)) +
  ylab('Blood cocaine concentration (mg/L)') +
  xlab('Experienced excited delerium (ED)')