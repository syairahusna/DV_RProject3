#create new column called 'state' in nonio_df and pre-populate it with entries in Zipcode
nonio_df["state"] <- nonio_df$"ZIPCODE"

#changing the zipcodes to their corresponding states in column 'state'
for (x in 1:length(nonio_df$state)) {
  if (nonio_df$state[x] >= 99500 && nonio_df$state[x] <= 99999) 
  {
    nonio_df$state[x] <- 'Alaska'
    next
  } 
  else if (nonio_df$state[x] >= 35000 && nonio_df$state[x] <= 36999) 
  {
    nonio_df$state[x] <- 'Alabama'
    next
  } 
  else if (nonio_df$state[x] >= 71600 && nonio_df$state[x] <= 72999) 
  {
    nonio_df$state[x] <- 'Arkansas'
    next
  } 
  else if (nonio_df$state[x] >= 58000 && nonio_df$state[x] <= 86599) 
  {
    nonio_df$state[x] <- 'Arizona'
    next
  } 
  else if (nonio_df$state[x] >= 90000 && nonio_df$state[x] <= 96199) 
  {
    nonio_df$state[x] <- 'California'
    next
  } 
  else if (nonio_df$state[x] >= 80000 && nonio_df$state[x] <= 81699) 
  {
    nonio_df$state[x] <- 'Colorado'
    next
  } 
  else if (nonio_df$state[x] >= 06800 && nonio_df$state[x] <= 06999) 
  {
    nonio_df$state[x] <- 'Connecticut'
    next
  } 
  else if (nonio_df$state[x] >= 20001 && nonio_df$state[x] <= 20599) 
  {
    nonio_df$state[x] <- 'Washington DC'
    next
  } 
  else if (nonio_df$state[x] >= 19700 && nonio_df$state[x] <= 19999) 
  {
    nonio_df$state[x] <- 'Delaware'
    next
  } 
  else if (nonio_df$state[x] >= 32100 && nonio_df$state[x] <= 34999) 
  {
    nonio_df$state[x] <- 'Florida'
  } 
  else if (nonio_df$state[x] >= 30000 && nonio_df$state[x] <= 31999) 
  {
    nonio_df$state[x] <- 'Georgia'
    next
  } 
  else if (nonio_df$state[x] >= 96700 && nonio_df$state[x] <= 96899)
  {
    nonio_df$state[x] <- 'Hawaii'
    next
  } 
  else if (nonio_df$state[x] >= 50000 && nonio_df$state[x] <= 52899)
  {
    nonio_df$state[x] <- 'Iowa'
    next
  } 
  else if (nonio_df$state[x] >= 83200 && nonio_df$state[x] <= 83899) 
  {
    nonio_df$state[x] <- 'Idaho'
    next
  } 
  else if (nonio_df$state[x] >= 60000 && nonio_df$state[x] <= 62999) 
  {
    nonio_df$state[x] <- 'Illinois'
    next
  } 
  else if (nonio_df$state[x] >= 46000 && nonio_df$state[x] <= 47999) 
  {
    nonio_df$state[x] <- 'Indiana'
    next
  } 
  else if (nonio_df$state[x] >= 66000 && nonio_df$state[x] <= 64799) 
  {
    nonio_df$state[x] <- 'Kansas'
    next
  } 
  else if (nonio_df$state[x] >= 40000 && nonio_df$state[x] <= 42799) 
  {
    nonio_df$state[x] <- 'Kentucky'
    next
  } 
  else if (nonio_df$state[x] >= 70000 && nonio_df$state[x] <= 71499) 
  {
    nonio_df$state[x] <- 'Louisiana'
    next
  } 
  else if (nonio_df$state[x] >= 01000 && nonio_df$state[x] <= 02799) 
  {
    nonio_df$state[x] <- 'Massachussetts'
    next
  } 
  else if (nonio_df$state[x] >= 20600 && nonio_df$state[x] <= 21999) 
  {
    nonio_df$state[x] <- 'Maryland'
    next
  } 
  else if (nonio_df$state[x] >= 03000 && nonio_df$state[x] <= 04999) 
  {
    nonio_df$state[x] <- 'Maine'
    next
  } 
  else if (nonio_df$state[x] >= 48000 && nonio_df$state[x] <= 49799) 
  {
    nonio_df$state[x] <- 'Michigan'
    next
  } 
  else if (nonio_df$state[x] >= 55000 && nonio_df$state[x] <= 56799)
  {
    nonio_df$state[x] <- 'Minnesota'
    next
  } 
  else if (nonio_df$state[x] >= 63000 && nonio_df$state[x] <= 65899) 
  {
    nonio_df$state[x] <- 'Missouri'
    next
  } 
  else if (nonio_df$state[x] >= 38600 && nonio_df$state[x] <= 39599) 
  {
    nonio_df$state[x] <- 'Mississippi'
    next
  } 
  else if (nonio_df$state[x] >= 59000 && nonio_df$state[x] <= 59999) 
  {
    nonio_df$state[x] <- 'Montana'
    next
  } 
  else if (nonio_df$state[x] >= 27000 && nonio_df$state[x] <= 28999) 
  {
    nonio_df$state[x] <- 'North Carolina'
    next
  } 
  else if (nonio_df$state[x] >= 58000 && nonio_df$state[x] <= 58899) 
  {
    nonio_df$state[x] <- 'North Dakota'
    next
  } 
  else if (nonio_df$state[x] >= 68000 && nonio_df$state[x] <= 69399) 
  {
    nonio_df$state[x] <- 'Nebraska'
    next
  } 
  else if (nonio_df$state[x] >= 03000 && nonio_df$state[x] <= 03899) 
  {
    nonio_df$state[x] <- 'New Hampshire'
    next
  } 
  else if (nonio_df$state[x] >= 07000 && nonio_df$state[x] <= 08999) 
  {
    nonio_df$state[x] <- 'New Jersey'
    next
  } 
  else if (nonio_df$state[x] >= 87000 && nonio_df$state[x] <= 88499) 
  {
    nonio_df$state[x] <- 'New Mexico'
    next
  } 
  else if (nonio_df$state[x] >= 89000 && nonio_df$state[x] <= 89899) 
  {
    nonio_df$state[x] <- 'Nevada'
    next
  } 
  else if (nonio_df$state[x] >= 10000 && nonio_df$state[x] <= 14999) 
  {
    nonio_df$state[x] <- 'New York'
    next
  } 
  else if (nonio_df$state[x] >= 43000 && nonio_df$state[x] <= 45899) 
  {
    nonio_df$state[x] <- 'Ohio'
    next
  } 
  else if (nonio_df$state[x] >= 73000 && nonio_df$state[x] <= 74999) 
  {
    nonio_df$state[x] <- 'Oklahoma'
    next
  } 
  else if (nonio_df$state[x] >= 97000 && nonio_df$state[x] <= 97999) 
  {
    nonio_df$state[x] <- 'Oregon'
    next
  } 
  else if (nonio_df$state[x] >= 15000 && nonio_df$state[x] <= 16999) 
  {
    nonio_df$state[x] <- 'Pennsylvania'
    next
  } 
  else if (nonio_df$state[x] >= 00600 && nonio_df$state[x] <= 00799) 
  {
    nonio_df$state[x] <- 'Puerto Rico'
    next
  } 
  else if (nonio_df$state[x] >= 02800 && nonio_df$state[x] <= 02999) 
  {
    nonio_df$state[x] <- 'Rhode Island'
    next
  } 
  else if (nonio_df$state[x] >= 29000 && nonio_df$state[x] <= 29999) 
  {
    nonio_df$state[x] <- 'South Carolina'
    next
  } 
  else if (nonio_df$state[x] >= 57000 && nonio_df$state[x] <= 57799) 
  {
    nonio_df$state[x] <- 'South Dakota'
    next
  } 
  else if (nonio_df$state[x] >= 37000 && nonio_df$state[x] <= 35899) 
  {
    nonio_df$state[x] <- 'Tennessee'
    next
  } 
  else if (nonio_df$state[x] >= 75000 && nonio_df$state[x] <= 79999) 
  {
    nonio_df$state[x] <- 'Texas'
    next
  } 
  else if (nonio_df$state[x] >= 84000 && nonio_df$state[x] <= 84799) 
  {
    nonio_df$state[x] <- 'Utah'
    next
  } 
  else if (nonio_df$state[x] >= 20040 && nonio_df$state[x] <= 24658) 
  {
    nonio_df$state[x] <- 'Virginia'
    next
  } 
  else if (nonio_df$state[x] >= 5001 && nonio_df$state[x] <= 5907) 
  {
    nonio_df$state[x] <- 'Vermont'
    next
  } 
  else if (nonio_df$state[x] >= 98001 && nonio_df$state[x] <= 99403) 
  {
    nonio_df$state[x] <- 'Washington'
    next
  } 
  else if (nonio_df$state[x] >= 53001 && nonio_df$state[x] <= 54990) 
  {
    nonio_df$state[x] <- 'Wisconsin'
    next
  } 
  else if (nonio_df$state[x] >= 24701 && nonio_df$state[x] <= 26886) 
  {
    nonio_df$state[x] <- 'West Virginia'
    next
  } 
  else if (nonio_df$state[x] >= 82001 && nonio_df$state[x] <= 83128) 
  {
    nonio_df$state[x] <- 'Wyoming'
    next
  } 
  else if (nonio_df$state[x] >= 962 && nonio_df$state[x] <= 966) 
  {
    nonio_df$state[x] <- 'Armed Forces Pacific'
    next
  } 
  else if (nonio_df$state[x] == 969) 
  {
    nonio_df$state[x] <- 'Guam'
    next
  } 
  else 
  {
    next
  }
}


#changing class type to factor
nonio_df$state <- as.factor(nonio_df$state)

#determine all levels
levels(nonio_df$state)


