p <- gather(unique_io, "rates", "value", 4:6) 
q <- gather(unique_nonio, "rates", "value", 4:6)
w <- ggplot() + geom_violin(data = p, aes(x = rates, y=value), fill = "red", alpha = 0.5) + geom_violin(data = q, aes(x = rates, y=value), fill = "yellow", alpha = 0.5) + coord_flip() + ggtitle('Electricity Rates For Zipcodes With Only Either Investor Owned Utilities or Non-Investor Owned Utilities') 
print(w)