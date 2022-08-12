library(ggplot2)
gapminder = read.csv("data/gapminder_data.csv")
gapminderAmerica = gapminder[gapminder$continent == "Americas",]
file.create("output/thereAndBackAgain.pdf")
pdf("output/thereAndBackAgain.pdf")
plot(y = gapminder$gdpPercap, x = gapminder$year, type ="l", main = "There and Back Again as an RScript")
ggplot(data = gapminderAmerica, mapping = aes(x = year, y = gdpPercap, color = country)) + 
  geom_line(show.legend = FALSE)+
  ggtitle("There and Back Again Package as an RScript")
dev.off()

