# areas where there are only io
unique_io <- anti_join(io_df, nonio_df, by = c("ZIPCODE"))

unique_io %>% tbl_df