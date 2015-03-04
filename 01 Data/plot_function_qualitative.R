myplot <- function(df, x) {
  names(df) <- c("x", "count")
  ggplot(df, aes(x=x, y=count)) + geom_point() + xlab(x) + theme(axis.text.x=element_blank())
}