require(jsonlite)
require(RCurl)
require(data.table)
require(tidyr)
require(dplyr)
require(ggplot2)
require(grid)

#investor-owned utilities - A utility owned by private investors, as opposed to one owned by a public trust or agency (EnergyVortex.com)
a business organization, providing a product or service regarded as a utility (often termed a public utility regardless of ownership), and managed as private enterprise rather than a function of government or a utility cooperative. 
#http://en.wikipedia.org/wiki/Investor-owned_utility
#https://www.avistautilities.com/services/aboutrates/documents/iou_pud.pdf
io_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from electricity_io "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

#non-investor-owned utilities
nonio_df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from electricity_nonio "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

# ERROR - Error in list("java.lang.NullPointerException", ) : argument 2 is empty
#categoricals <- eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from electricity_nonio"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'True'), verbose = TRUE), 1, 2^31-1)))

# inner join
ij_df <- inner_join(io_df, nonio_df, by = c("ZIPCODE"))

#full outer join
foj_df <- full_join(io_df, nonio_df, by = c("ZIPCODE"))

# areas where there are only io
unique_io <- anti_join(io_df, nonio_df, by = c("ZIPCODE"))

# areas where there are only non-io
unique_nonio <- anti_join(nonio_df, io_df, by = c("ZIPCODE"))

                 
