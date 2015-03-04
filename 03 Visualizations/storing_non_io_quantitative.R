pushViewport(viewport(layout = grid.layout(2, 12)))   

print(o[[1]], vp = viewport(layout.pos.row = 1, layout.pos.col = 1:6))
print(o[[2]], vp = viewport(layout.pos.row = 1, layout.pos.col = 7:12))
print(o[[3]], vp = viewport(layout.pos.row = 2, layout.pos.col = 1:6))
print(o[[4]], vp = viewport(layout.pos.row = 2, layout.pos.col = 7:12))
