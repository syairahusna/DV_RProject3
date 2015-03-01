require(jsonlite)
require(RCurl)
require(tidyr)
require(dplyr)
require(ggplot2)
require(grid)

#investor owned utilities - A utility owned by private investors, as opposed to one owned by a public trust or agency (EnergyVortex.com)
#http://en.wikipedia.org/wiki/Investor-owned_utility
#https://www.avistautilities.com/services/aboutrates/documents/iou_pud.pdf
io_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from electricity_io "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))


io_df["state"] <- io_df$"ZIPCODE"

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

io_df$state <- as.factor(io_df$state)
levels(io_df$state)

#non-investor owned utilities
nonio_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from electricity_nonio "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))


nonio_df["state"] <- nonio_df$"ZIPCODE"

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

nonio_df$state <- as.factor(nonio_df$state)
levels(nonio_df$state)


categoricals_io <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from electricity_io"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

categoricals_nonio <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from electricity_nonio"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))


# inner join
ij_df <- inner_join(io_df, nonio_df, by = c("ZIPCODE"))

#full outer join
foj_df <- full_join(io_df, nonio_df, by = c("ZIPCODE"))

# areas where there are only io
unique_io <- anti_join(io_df, nonio_df, by = c("ZIPCODE"))

# areas where there are only non-io
unique_nonio <- anti_join(nonio_df, io_df, by = c("ZIPCODE"))


anti_join(io_df, nonio_df, by = c("ZIPCODE")) %>%  



                 
