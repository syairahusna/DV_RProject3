p <- gather(unique_io, "rates", "value", 4:6) 
q <- gather(unique_nonio, "rates", "value", 4:6)
ggplot() + geom_violin(data = p, aes(x = rates, y=value, color = "Investor Owned Utilities"), alpha = 0.7) + geom_violin(data = q, aes(x = rates, y=value, color = "Non-Investor Owned Utilities"), alpha = 0.5) +  scale_colour_manual(name='', values=c('Investor Owned Utilities'='red', 'Non-Investor Owned Utilities'='blue')) + ggtitle('Electricity Rates For Zipcodes With Only Either\n Investor Owned Utilities or Non-Investor Owned Utilities') + theme(plot.title=element_text(size=13, face="bold", vjust=2)) + labs(x="Rates", y="Value($)") + coord_flip()




