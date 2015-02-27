require(jsonlite)
require(RCurl)
require(ggplot2)
require(grid)
require(tidyr)
require(dplyr)

# show the dataframes' stuctures
a <- 'Armenia'

hnp_sample_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from hnp "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

tbl_df(hnp_sample_df)

b <- 'Kazakhstan'

wdi_sample_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from wdi "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

tbl_df(wdi_sample_df)

#inner join
c <- 'Malaysia'
hnp_msia_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from hnp where country_name = \\\'"a"\\\'  "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', a=c, returnFor = 'JSON'), verbose = TRUE)))

wdi_msia_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from wdi where country_name = \\\'"a"\\\'  "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', a=c, returnFor = 'JSON'), verbose = TRUE)))



d <- inner_join(wdi_msia_df, hnp_msia_df)               
                
d %>% tbl_df()

f <- full_join(wdi_msia_df, hnp_msia_df)

f %>% tbl_df()

g <- semi_join(hnp_msia_df, wdi_msia_df)

g %>% tbl_df()

h <- anti_join(wdi_msia_df, hnp_msia_df)

h %>% tbl_df()



