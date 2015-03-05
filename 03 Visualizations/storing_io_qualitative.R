#png("/Users/Syairah/DataVisualization/DV_RProject3/00 Doc/categoricals_io_1.png", width = 25, height = 10, units = "in", res = 72)
#grid.newpage()
pushViewport(viewport(layout = grid.layout(6, 12)))   

print(l[[1]], vp = viewport(layout.pos.row = 1:3, layout.pos.col = 1:12))
print(l[[2]], vp = viewport(layout.pos.row = 4:6, layout.pos.col = 1:12))

#dev.off()