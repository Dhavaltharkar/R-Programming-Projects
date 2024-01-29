data_iris <-iris[1:4]

cov_data <- cov(data_iris)

Eigen_data <- eigen(cov_data)

pca_data <- princomp(data_iris, cor = 'False')

Eigen_data$values

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/01.PNG">

pca_data$loadings[,1:4]

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/02.PNG">

Eigen_data$vectors

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/03.PNG">

summary(pca_data)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/04.PNG">

biplot(pca_data)

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/05.PNG">

screeplot(pca_data, type = "lines")

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/06.PNG">

model2 = pca_data$loadings[,1]
model_scores <- as.matrix(data_iris)%*%model2
mod1<- naiveBayes(iris[,1:4],iris[, 5])
mod2 <-naiveBayes(model_scores,iris[,5])
table(predict(mod1,iris[,1:4]),iris[,5])

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/07.png">

table(predict(mod2,model_scores),iris[,5])

<img src = "https://raw.githubusercontent.com/Dhavaltharkar/R-Programming-Projects/main/Iris_Dataset/Markdown/08.PNG">
