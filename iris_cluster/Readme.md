install.packages("ggplot2")

library(ggplot2)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/01.PNG">


scatter <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.width))

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species, shape = Species)) +geom_point() + theme_bw() + labs(x = "Sepal Length", y = "Sepal Width", title = "Sepal length vs Width")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/02.PNG">

scatter <- ggplot(data = iris, aes(x = Petal.Length, y = Petal.width))

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species)) +geom_point() + theme_bw() + labs(x = "Petal Length", y = "Petal Width", title = "Petal length vs Width")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/03.PNG">

ggplot(data = iris, aes(x = Sepal.Length, fill = Species)) + geom_density(alpha = 0.25) +  theme_bw() + labs(x = "Sepal Length", title = "Species vs Sepal Length")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/04.PNG">

ggplot(data = iris, aes(x = Sepal.Width, fill = Species)) + geom_density(alpha = 0.25) +  theme_bw() + labs(x = "Sepal Width", title = "Species vs Sepal Width")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/05.PNG">

ggplot(data = iris, aes(x = Petal.Length, fill = Species)) + geom_density(alpha = 0.25) +  theme_bw() + labs(x = "Petal Length", title = "Species vs Petal Length")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/06.PNG">

ggplot(data = iris, aes(x = Petal.Width, fill = Species)) + geom_density(alpha = 0.25) +  theme_bw() + labs(x = "Petal Width", title = "Species vs Petal Width")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/07.PNG"?

vol <- ggplot(data=iris, aes(x = Sepal.Length))

vol + geom_density(aes(ymax = ..density.., ymin = -..density.., fill = Species, color = Species),  geom = "ribbon", position = "identity") +  facet_grid(. ~ Species) +  coord_flip() +  theme_bw() +  labs(x = "Sepal Length", title = "Species vs Sepal Length")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/08.PNG">

vol <- ggplot(data=iris, aes(x = Sepal.Width))

vol + geom_density(aes(ymax = ..density.., ymin = -..density.., fill = Species, color = Species),  geom = "ribbon", position = "identity") +  facet_grid(. ~ Species) +  coord_flip() +  theme_bw() +  labs(x = "Sepal Width", title = "Species vs Sepal Width")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/09.PNG">

irisData <- iris[, 1:4]

totalwSS <- numeric(15)

for (i in 1:15) {

  clusteriris <- kmeans(irisData, centers = i) 

  totalwSS[i] <- clusteriris$tot.withinss

}

plot(x = 1:15, y = totalwSS, type = "b", xlab ="Number of Clusters", ylab = "Within groups sum-of-squares")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/034.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/05.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/06.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/07.PNG"?
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/08.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/09.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/10.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/11.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/12.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/13.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/14.PNG">
<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/iris_cluster/Markdown/15.PNG">
