# STAT 3093 Assignment 1
# Question 2 - Chapter 1 - Question 26 (page 24)
# Albert Lockett (3254354, k44if@unb.ca)

library(ggplot2)

q2_data <- c(
  'O', 'O', 'N', 'J', 'C', 'F', 'B', 'B', 'F', 'O', 'J', 'O', 'O', 'M',
  'O', 'F', 'F', 'O', 'O', 'N', 'O', 'N', 'J', 'F', 'J', 'B', 'O', 'C',
  'J', 'O', 'J', 'J', 'F', 'N', 'O', 'B', 'M', 'O', 'J', 'M', 'O', 'B',
  'O', 'F', 'J', 'O', 'O', 'B', 'N', 'C', 'O', 'O', 'O', 'M', 'B', 'F',
  'J', 'O', 'F', 'N'
)

# compute the frequency of the complaint types
freqs <- purrr::reduce(q2_data, function(acc_list, complaintType) {
  # increment the count of complaint type by one for each observation
  if (is.null(acc_list[[complaintType]])) {
    acc_list[complaintType] = 0; # intialise count to 0
  }
  acc_list[complaintType] = acc_list[[complaintType]] + 1;
  return (acc_list);
}, .init=list())

# compute the relative frequencies
n <- length(q2_data)
relative_freqs <- purrr::reduce(
  names(freqs), 
  function(acc_list, complaintType) {
    # the relative freq. is the frequency divided by number of observations
    acc_list[complaintType] <- freqs[[complaintType]] / n;
    return (acc_list);
  },
  .init=list()
)

# output the data
print(
  data.frame(
    Frequencies=unlist(freqs), 
    'Relative Frequencies'=unlist(relative_freqs)
  )[sort(names(freqs)),]
)

# create the histogram
histogram <- ggplot(data.frame(q2_data), aes(x=q2_data)) + 
  geom_bar(fill="lightblue", aes(y = (..count..)/sum(..count..))) +
  xlab('Complaint Type') +
  ylab('Relative Frequency')
print(histogram)

 