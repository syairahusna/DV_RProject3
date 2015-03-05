#png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_io_2.png", width = 25, height = 10, units = "in", res = 72)
#grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 12)))   

print(m[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:6))
print(m[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 7:12))
print(m[[3]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:6))
print(m[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 7:12))

#dev.off()