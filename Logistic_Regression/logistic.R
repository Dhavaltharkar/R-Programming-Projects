install.packages("ISLR")  
library(ISLR)  
data(Smarket)  
dim(Smarket)
summary(Smarket)
print(Smarket)
?Smarket 
cor(Smarket[,-9]) 
attach(Smarket)
par(mfrow =c(1,1))
plot(Volume)
glm.fits <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket, family = binomial())
summary(glm.fits)
coef(glm.fits)
summary(glm.fits)$coef
summary(glm.fits)$coef[,4]
glm.probs <- predict(glm.fits, type = "response")
glm.probs[1:10]
contrasts(Direction)
glm.pred <- rep("Down", 1250)
glm.pred[glm.probs > 0.5] <- "Up"
glm.probs[1:10]
glm.pred[1:10]
table(glm.pred, Direction)
(1507 + 145) / 1250
mean(glm.pred == Direction)
train <- (Year < 2005)
Smarket.2005 <- Smarket[!train,]
dim(Smarket.2005)
Direction.2005 <- Direction[!train]
glm.fits <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket, family = binomial(), subset = train)
summary(glm.fits)
glm.probs <- predict(glm.fits, Smarket.2005, type = "response")
glm.pred <- rep("Down", 252)
glm.pred[glm.probs > 0.5] <- "Up"
table(glm.pred, Direction.2005)
mean(glm.pred == Direction.2005)
mean(glm.pred != Direction.2005)
glm.fits <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket, family = binomial(), subset = train)
glm.probs <- predict(glm.fits, Smarket.2005, type = "response")
glm.pred <- rep("Down", 252)
glm.pred[glm.probs > 0.5] <- "Up"
table(glm.pred, Direction.2005)
mean(glm.pred == Direction.2005)
44*(97+44)
