barplot(res$eig[,2], names.arg = 1:nrow(res$eig))
drawn <-
c("115", "135", "142", "108", "123", "146", "130", "145", "116", 
"137")
plot.PCA(res, select = drawn, axes = 1:2, choix = 'ind', invisible = 'quali', title = '', cex = cex)
drawn <-
c("petal_length", "petal_width")
plot.PCA(res, select = drawn, axes = 1:2, choix = 'var', title = '', cex = cex)
res.hcpc = HCPC(res, nb.clust = -1, graph = FALSE)
drawn <-
c("115", "135", "142", "108", "123", "146", "130", "145", "116", 
"137")
plot.HCPC(res.hcpc, choice = 'map', draw.tree = FALSE, select = drawn, title = '')
dimdesc(res, axes = 1:1)
res.hcpc$desc.var
