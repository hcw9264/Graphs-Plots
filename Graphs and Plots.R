# Statistical Graphs with Diamonds Dataset
head(diamonds)
summary(diamonds)
dim(diamonds)

# Standard Plots
hist(diamonds$carat,main = "Carat Histogram",xlab = "Carat",ylab = "Value")
plot(diamonds$color,diamonds$clarity, main="Color to Cut", xlab="Color",ylab="Cut")
scatter.smooth(diamonds$carat,diamonds$price) # Scatter w/ Best Fit Line
plot(diamonds$carat,diamonds$price)
plot(diamonds$cut,diamonds$price)
plot(diamonds$color,diamonds$price)
plot(diamonds$clarity,diamonds$price)

# ggplot2
## Get ggplot2
library(ggplot2)
## Plots with ggplot2
ggplot(data = diamonds)+geom_histogram(aes(carat),fill="pink") # Histogram of Carats
ggplot(data = diamonds)+geom_density(aes(carat),fill="blue") # Density Plot of Carats
g=ggplot(diamonds,aes(x=carat,y=price)) # Background Only with x and y 
ggplot(diamonds,aes(x=carat,y=price))+geom_point()
## Scatter Plots
g+geom_point(aes(color=color)) # Scatter Plot x=carat y=price col=color
g+geom_point(aes(color=color))+facet_wrap(~color)
g+geom_point(aes(color=cut)) # Scatter Plot x=carat y=price col=cut
g+geom_point(aes(color=cut))+facet_wrap(~cut)
g+geom_point(aes(color=clarity)) # Scatter Plot x=carat y=price col=clarity
g+geom_point(aes(color=clarity))+facet_wrap(~clarity)
g+geom_point(aes(color=clarity))+facet_wrap(cut~clarity)
## Histogram 
ggplot(diamonds,aes(x=carat))+geom_histogram()
ggplot(diamonds,aes(x=carat))+geom_histogram()+facet_wrap(~clarity)
ggplot(diamonds,aes(x=carat))+geom_histogram()+facet_wrap(cut~clarity)
