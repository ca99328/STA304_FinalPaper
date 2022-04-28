# Code for all plots used



# Correlation matrix heatmap
cormat <- round(cor(rainfall),2)
melted_cormat <- melt(cormat)
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value))  + 
  geom_tile() + xlab("") + ylab("") +
  theme(axis.text.x=element_text(angle=45, hjust=1))
# Scatterplot
mslp <- ggplot(rainfall, aes(mslp, rainfall)) + geom_smooth(method = "loess")
w <- ggplot(rainfall, aes(w, rainfall)) + geom_smooth(method = "loess")
s <- ggplot(rainfall, aes(s, rainfall)) + geom_smooth(method = "loess")
brestzon <- ggplot(rainfall, aes(brestzon, rainfall)) + geom_smooth(method = "loess")
kefzon <- ggplot(rainfall, aes(kefzon, rainfall)) + geom_smooth(method = "loess")
corunmer <- ggplot(rainfall, aes(corunmer, rainfall)) + geom_smooth(method = "loess")
naoi <- ggplot(rainfall, aes(naoi, rainfall)) + geom_smooth(method = "loess")
sstatlan <- ggplot(rainfall, aes(sstatlan, rainfall)) + geom_smooth(method = "loess")
sstengch <- ggplot(rainfall, aes(sstengch, rainfall)) + geom_smooth(method = "loess")
sstmed <- ggplot(rainfall, aes(sstmed, rainfall)) + geom_smooth(method = "loess")
grid.arrange(mslp, w, s, brestzon, kefzon, corunmer, naoi, sstatlan, sstengch, sstmed, ncol = 3, nrow = 4)