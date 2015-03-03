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
