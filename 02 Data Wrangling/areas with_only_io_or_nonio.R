p <- gather(unique_io, "rates", "value", 4:6) 
q <- gather(unique_nonio, "rates", "value", 4:6)
p["sole_ownership"] <- "Investor Owned Utilities"
q["sole_ownership"] <- "Non-Investor Owned Utilities"
uniques <- bind_rows(p,q)
uniques %>% select(rates, value, sole_ownership) %>% group_by(sole_ownership) %>% ggplot(aes(x = rates, y = value, fill = sole_ownership)) + geom_violin() + coord_flip() + ggtitle('Electricity Rates For Areas That Only Have Either\n Investor Owned Utilities or Non-Investor Owned Utilities') + theme(plot.title=element_text(size=10, face="bold", vjust=2)) + theme(axis.text.x=element_text(size=5, vjust=0.5)) + labs(x="Rates", y="Value($)") + theme(legend.position="bottom") 




