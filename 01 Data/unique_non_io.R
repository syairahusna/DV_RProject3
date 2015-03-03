# areas where there are only non-io
unique_nonio <- anti_join(nonio_df, io_df, by = c("ZIPCODE"))

unique_nonio %>% tbl_df
