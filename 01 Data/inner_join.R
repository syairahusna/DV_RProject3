# inner join
ij_df <- inner_join(io_df, nonio_df, by = c("ZIPCODE"))

ij_df %>% tbl_df