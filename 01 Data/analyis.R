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


myplot <- function(df, x) {
  names(df) <- c("x", "count")
  ggplot(df, aes(x=x, y=count)) + geom_point() + xlab(x) + theme(axis.text.x=element_text(angle=90, size=7))
}

categoricals_io <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from electricity_io"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

l <- list()
for (i in names(io_df)) { 
  if (i %in% categoricals_io[[1]]) {
    a <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from electricity_io group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', i=i), verbose = TRUE)))
    p <- myplot(a,i)
    print(p) 
    l[[i]] <- p
  }
}

png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_io_1.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:12))
print(l[[2]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:12))

dev.off()



myplot1 <- function(df, x) {
  names(df) <- c("x")
  ggplot(df, aes(x=x)) + geom_histogram() + xlab(x) + theme(axis.text.x=element_text(angle=90, size=7))
}
l <- list()
for (i in names(io_df)) {   
  # For details on [[...]] below, see http://stackoverflow.com/questions/1169456/in-r-what-is-the-difference-between-the-and-notations-for-accessing-the
  if (i %in% categoricals_io[[2]]) {
    a <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\" from electricity_io where \\\""i"\\\" is not null "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', i=i), verbose = TRUE)))
    p <- myplot1(a,i)
    print(p) 
    l[[i]] <- p
  }
}

png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_io_2.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:6))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 7:12))
print(l[[3]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:6))
print(l[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 7:12))

dev.off()




categoricals_nonio <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from electricity_nonio"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))


l <- list()
for (i in names(io_df)) { 
  if (i %in% categoricals_nonio[[1]]) {
    a <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from electricity_nonio group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', i=i), verbose = TRUE)))
    p <- myplot(a,i)
    print(p) 
    l[[i]] <- p
  }
}

png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_nonio_1.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:12))
print(l[[2]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:12))

dev.off()


l <- list()
for (i in names(nonio_df)) {   
  # For details on [[...]] below, see http://stackoverflow.com/questions/1169456/in-r-what-is-the-difference-between-the-and-notations-for-accessing-the
  if (i %in% categoricals_nonio[[2]]) {
    a <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\" from electricity_nonio where \\\""i"\\\" is not null "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', i=i), verbose = TRUE)))
    p <- myplot1(a,i)
    print(p) 
    l[[i]] <- p
  }
}

png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_nonio_2.png", width = 25, height = 10, units = "in", res = 72)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:6))
print(l[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 7:12))
print(l[[3]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:6))
print(l[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 7:12))

dev.off()

# inner join
ij_df <- inner_join(io_df, nonio_df, by = c("ZIPCODE"))
View(ij_df)

#full outer join
foj_df <- full_join(io_df, nonio_df, by = c("ZIPCODE"))
View(foj_df)

# areas where there are only io
unique_io <- anti_join(io_df, nonio_df, by = c("ZIPCODE"))
View(unique_io)

# areas where there are only non-io
unique_nonio <- anti_join(nonio_df, io_df, by = c("ZIPCODE"))
View(unique_nonio)

#1
p <- gather(unique_io, "rates", "value", 4:6) 
q <- gather(unique_nonio, "rates", "value", 4:6)
ggplot() + geom_violin(data = p, aes(x = rates, y=value), fill = "red", alpha = 0.5) + geom_violin(data = q, aes(x = rates, y=value), fill = "yellow", alpha = 0.5) + coord_flip() + ggtitle('Electricity Rates For Zipcodes With Only Either Investor Owned Utilities or Non-Investor Owned Utilities') 

#2
r <- gather(ij_df, "io_rates", "io_value", 4:6)
r <- gather(r, "nonio_rates", "nonio_value", 7:9)
s <- ggplot(r, aes(x=io_rates, y = io_value)) + geom_violin(fill = "red", alpha = 0.5)
s + geom_violin(aes(y=nonio_value), fill = "yellow", alpha = 0.4) + ggtitle('Electricity Rates For Zipcodes With Both Investor Owned Utilities And Non-Investor Owned Utilities') 


#3  
g <- gather(io_df, "io_rates", "io_value", 4:6)
ggplot(g, aes(x = io_value, y = state, color = state)) + geom_point() + facet_wrap(~io_rates) + geom_jitter() + scale_x_continuous(limits=c(1,300)) 
#or
ggplot(g, aes(x = io_rates, y = io_value, color = io_rates)) + geom_point() + facet_wrap(~state) + geom_jitter() + scale_y_continuous(limits=c(1,300)) 


#4 
h <- gather(nonio_df, "nonio_rates", "nonio_value", 4:6)
ggplot(h, aes(x = nonio_value, y = state, color = state)) + geom_point() + facet_wrap(~nonio_rates) + geom_jitter() + scale_x_continuous(limits=c(1,800))
#or
ggplot(h, aes(x = nonio_rates, y = nonio_value, color = nonio_rates)) + geom_point() + facet_wrap(~state) + geom_jitter() + scale_y_continuous(limits=c(1,800))

#5 

#library(scatterplot3d)
#attach(g)
#scatterplot3d(io_value, state,  pch=16, highlight.3d=TRUE, main = "Investor-Owned Utilities By State")

#g %>% select(ZIPCODE, state, io_rates, io_value) %>% group_by(state, io_rates) %>% summarise(mean_rate = mean(io_value)) %>% ggplot(aes(x = mean_rate, y=mean_rate, size = state, color=state)) + geom_point() + facet_wrap(~io_rates)
 
#g %>% select(ZIPCODE, state, io_rates, io_value) %>% group_by(state, io_rates) %>% summarise(mean_rate = mean(io_value)) %>% ggplot(aes(x = mean_rate, y=mean_rate, size = state, color=state)) + geom_point() + scale_x_continuous(limits=c(1,70)) + scale_y_continuous(limits=c(1,70)) + facet_wrap(~io_rates)

#h %>% select(ZIPCODE, state, nonio_rates, nonio_value) %>% group_by(state, nonio_rates) %>% summarise(mean_rate = mean(nonio_value)) %>% ggplot(aes(x = mean_rate, y=mean_rate, size = state, color=state)) + geom_point() + facet_wrap(~nonio_rates)

#h %>% select(ZIPCODE, state, nonio_rates, nonio_value) %>% group_by(state, nonio_rates) %>% summarise(mean_rate = mean(nonio_value)) %>% ggplot(aes(x = mean_rate, y=mean_rate, size = state, color=state)) + geom_point() + scale_x_continuous(limits=c(1,120)) + scale_y_continuous(limits=c(1,120)) + facet_wrap(~nonio_rates)

h %>% select(ZIPCODE, state, nonio_rates, nonio_value) %>% group_by(state, nonio_rates) %>% summarise(mean_rate = mean(nonio_value)) %>% ggplot(aes(x = state, y=mean_rate, fill = nonio_rates, nonio_rates)) + geom_bar(stat= "identity", position=position_dodge()) + theme(axis.text.x=element_text(angle=90, size=15)) + coord_flip()
  
g %>% select(ZIPCODE, state, io_rates, io_value) %>% group_by(state, io_rates) %>% summarise(mean_rate = mean(io_value)) %>% ggplot(aes(x = state, y=mean_rate, fill = io_rates, io_rates)) + geom_bar(stat= "identity", position=position_dodge()) + theme(axis.text.x=element_text(angle=90, size=15)) + coord_flip()


#how about the average rate for areas that have both io and nonio ? How to portray them (or their mean rates) in a single graph?
