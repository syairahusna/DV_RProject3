myplot1 <- function(df, x) {
  names(df) <- c("x")
  ggplot(df, aes(x=x)) + geom_histogram() + xlab(x) + theme(axis.text.x=element_text(angle=90, size=7))
}