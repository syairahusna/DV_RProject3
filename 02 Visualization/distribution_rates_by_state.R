g <- gather(io_df, "io_rates", "io_value", 4:6)
ggplot(g, aes(x = io_value, y = state, color = state)) + geom_point() + facet_wrap(~io_rates) + geom_jitter() + scale_x_continuous(limits=c(1,300)) 