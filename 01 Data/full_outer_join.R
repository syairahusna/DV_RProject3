#full outer join
foj_df <- full_join(io_df, nonio_df, by = c("ZIPCODE"))
