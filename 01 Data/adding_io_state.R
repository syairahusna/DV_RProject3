#create new column called 'state' and pre-populate with entries in Zipcode
io_df["state"] <- io_df$"ZIPCODE"

#changing the zipcodes to their corresponding states in column 'state'
for (x in 1:length(io_df$state)) {
  if (io_df$state[x] >= 99500 && io_df$state[x] <= 99999) 
  {
    io_df$state[x] <- 'Alaska'
    next
  } 
  else if (io_df$state[x] >= 35000 && io_df$state[x] <= 36999) 
  {
    io_df$state[x] <- 'Alabama'
    next
  } 
  else if (io_df$state[x] >= 71600 && io_df$state[x] <= 72999) 
  {
    io_df$state[x] <- 'Arkansas'
    next
  } 
  else if (io_df$state[x] >= 58000 && io_df$state[x] <= 86599) 
  {
    io_df$state[x] <- 'Arizona'
    next
  } 
  else if (io_df$state[x] >= 90000 && io_df$state[x] <= 96199) 
  {
    io_df$state[x] <- 'California'
    next
  } 
  else if (io_df$state[x] >= 80000 && io_df$state[x] <= 81699) 
  {
    io_df$state[x] <- 'Colorado'
    next
  } 
  else if (io_df$state[x] >= 06800 && io_df$state[x] <= 06999) 
  {
    io_df$state[x] <- 'Connecticut'
    next
  } 
  else if (io_df$state[x] >= 20001 && io_df$state[x] <= 20599) 
  {
    io_df$state[x] <- 'Washington DC'
    next
  } 
  else if (io_df$state[x] >= 19700 && io_df$state[x] <= 19999) 
  {
    io_df$state[x] <- 'Delaware'
    next
  } 
  else if (io_df$state[x] >= 32100 && io_df$state[x] <= 34999) 
  {
    io_df$state[x] <- 'Florida'
  } 
  else if (io_df$state[x] >= 30000 && io_df$state[x] <= 31999) 
  {
    io_df$state[x] <- 'Georgia'
    next
  } 
  else if (io_df$state[x] >= 96700 && io_df$state[x] <= 96899)
  {
    io_df$state[x] <- 'Hawaii'
    next
  } 
  else if (io_df$state[x] >= 50000 && io_df$state[x] <= 52899)
  {
    io_df$state[x] <- 'Iowa'
    next
  } 
  else if (io_df$state[x] >= 83200 && io_df$state[x] <= 83899) 
  {
    io_df$state[x] <- 'Idaho'
    next
  } 
  else if (io_df$state[x] >= 60000 && io_df$state[x] <= 62999) 
  {
    io_df$state[x] <- 'Illinois'
    next
  } 
  else if (io_df$state[x] >= 46000 && io_df$state[x] <= 47999) 
  {
    io_df$state[x] <- 'Indiana'
    next
  } 
  else if (io_df$state[x] >= 66000 && io_df$state[x] <= 64799) 
  {
    io_df$state[x] <- 'Kansas'
    next
  } 
  else if (io_df$state[x] >= 40000 && io_df$state[x] <= 42799) 
  {
    io_df$state[x] <- 'Kentucky'
    next
  } 
  else if (io_df$state[x] >= 70000 && io_df$state[x] <= 71499) 
  {
    io_df$state[x] <- 'Louisiana'
    next
  } 
  else if (io_df$state[x] >= 01000 && io_df$state[x] <= 02799) 
  {
    io_df$state[x] <- 'Massachussetts'
    next
  } 
  else if (io_df$state[x] >= 20600 && io_df$state[x] <= 21999) 
  {
    io_df$state[x] <- 'Maryland'
    next
  } 
  else if (io_df$state[x] >= 03000 && io_df$state[x] <= 04999) 
  {
    io_df$state[x] <- 'Maine'
    next
  } 
  else if (io_df$state[x] >= 48000 && io_df$state[x] <= 49799) 
  {
    io_df$state[x] <- 'Michigan'
    next
  } 
  else if (io_df$state[x] >= 55000 && io_df$state[x] <= 56799)
  {
    io_df$state[x] <- 'Minnesota'
    next
  } 
  else if (io_df$state[x] >= 63000 && io_df$state[x] <= 65899) 
  {
    io_df$state[x] <- 'Missouri'
    next
  } 
  else if (io_df$state[x] >= 38600 && io_df$state[x] <= 39599) 
  {
    io_df$state[x] <- 'Mississippi'
    next
  } 
  else if (io_df$state[x] >= 59000 && io_df$state[x] <= 59999) 
  {
    io_df$state[x] <- 'Montana'
    next
  } 
  else if (io_df$state[x] >= 27000 && io_df$state[x] <= 28999) 
  {
    io_df$state[x] <- 'North Carolina'
    next
  } 
  else if (io_df$state[x] >= 58000 && io_df$state[x] <= 58899) 
  {
    io_df$state[x] <- 'North Dakota'
    next
  } 
  else if (io_df$state[x] >= 68000 && io_df$state[x] <= 69399) 
  {
    io_df$state[x] <- 'Nebraska'
    next
  } 
  else if (io_df$state[x] >= 03000 && io_df$state[x] <= 03899) 
  {
    io_df$state[x] <- 'New Hampshire'
    next
  } 
  else if (io_df$state[x] >= 07000 && io_df$state[x] <= 08999) 
  {
    io_df$state[x] <- 'New Jersey'
    next
  } 
  else if (io_df$state[x] >= 87000 && io_df$state[x] <= 88499) 
  {
    io_df$state[x] <- 'New Mexico'
    next
  } 
  else if (io_df$state[x] >= 89000 && io_df$state[x] <= 89899) 
  {
    io_df$state[x] <- 'Nevada'
    next
  } 
  else if (io_df$state[x] >= 10000 && io_df$state[x] <= 14999) 
  {
    io_df$state[x] <- 'New York'
    next
  } 
  else if (io_df$state[x] >= 43000 && io_df$state[x] <= 45899) 
  {
    io_df$state[x] <- 'Ohio'
    next
  } 
  else if (io_df$state[x] >= 73000 && io_df$state[x] <= 74999) 
  {
    io_df$state[x] <- 'Oklahoma'
    next
  } 
  else if (io_df$state[x] >= 97000 && io_df$state[x] <= 97999) 
  {
    io_df$state[x] <- 'Oregon'
    next
  } 
  else if (io_df$state[x] >= 15000 && io_df$state[x] <= 16999) 
  {
    io_df$state[x] <- 'Pennsylvania'
    next
  } 
  else if (io_df$state[x] >= 00600 && io_df$state[x] <= 00799) 
  {
    io_df$state[x] <- 'Puerto Rico'
    next
  } 
  else if (io_df$state[x] >= 02800 && io_df$state[x] <= 02999) 
  {
    io_df$state[x] <- 'Rhode Island'
    next
  } 
  else if (io_df$state[x] >= 29000 && io_df$state[x] <= 29999) 
  {
    io_df$state[x] <- 'South Carolina'
    next
  } 
  else if (io_df$state[x] >= 57000 && io_df$state[x] <= 57799) 
  {
    io_df$state[x] <- 'South Dakota'
    next
  } 
  else if (io_df$state[x] >= 37000 && io_df$state[x] <= 35899) 
  {
    io_df$state[x] <- 'Tennessee'
    next
  } 
  else if (io_df$state[x] >= 75000 && io_df$state[x] <= 79999) 
  {
    io_df$state[x] <- 'Texas'
    next
  } 
  else if (io_df$state[x] >= 84000 && io_df$state[x] <= 84799) 
  {
    io_df$state[x] <- 'Utah'
    next
  } 
  else if (io_df$state[x] >= 20040 && io_df$state[x] <= 24658) 
  {
    io_df$state[x] <- 'Virginia'
    next
  } 
  else if (io_df$state[x] >= 5001 && io_df$state[x] <= 5907) 
  {
    io_df$state[x] <- 'Vermont'
    next
  } 
  else if (io_df$state[x] >= 98001 && io_df$state[x] <= 99403) 
  {
    io_df$state[x] <- 'Washington'
    next
  } 
  else if (io_df$state[x] >= 53001 && io_df$state[x] <= 54990) 
  {
    io_df$state[x] <- 'Wisconsin'
    next
  } 
  else if (io_df$state[x] >= 24701 && io_df$state[x] <= 26886) 
  {
    io_df$state[x] <- 'West Virginia'
    next
  } 
  else if (io_df$state[x] >= 82001 && io_df$state[x] <= 83128) 
  {
    io_df$state[x] <- 'Wyoming'
    next
  } 
  else if (io_df$state[x] >= 962 && io_df$state[x] <= 966) 
  {
    io_df$state[x] <- 'Armed Forces Pacific'
    next
  } 
  else if (io_df$state[x] == 969) 
  {
    io_df$state[x] <- 'Guam'
    next
  } 
  else 
  {
    next
  }
}

#changing class type to factor
io_df$state <- as.factor(io_df$state)

#determine all levels
levels(io_df$state)