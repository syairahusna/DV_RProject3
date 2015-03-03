l <- list()
for (i in names(io_df)) { 
  if (i %in% categoricals_nonio[[1]]) {
    a <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select \\\""i"\\\", count(*) n from electricity_nonio group by \\\""i"\\\" "'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_nm22335', PASS='orcl_nm22335', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON', i=i), verbose = TRUE)))
    p <- myplot(a,i)
    print(p) 
    l[[i]] <- p
  }
}
