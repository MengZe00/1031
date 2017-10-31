#條件散佈圖
bloodtype = c("A", "A", "B", "AB", "AB", "O")
bloodtype = as.factor(bloodtype)
score = c(50, 60, 100, 80, 100, 20)
height = c(161,180,168,177,183,156)
plot(bloodtype, score)
coplot(score~height|bloodtype,rows = 1)
#qqplot
par(mfrow=c(1, 2))
qqnorm(score, ylab = "Score")
qqline(score)
qqplot(height, score, xlab = "Height", ylab = "Score")
#------------------------------
# par(mfrow=c(2, 2))
plot(iris)
attach(iris)
plot(~Sepal.Length + Petal.Length + Petal.Width)
plot(Sepal.Length~Petal.Length+Petal.Width)

#-----------------------------
chippy = function(x) sin(cos(x)*exp(-x/2))
curve(chippy, -8, 7, n=2000)
curve(abs(x^3 - 2*x^2 + 1),-4, 4)
curve(dnorm(x)*150, lty=2, add=T)
#------------------------------
#histogram
x = rnorm(100)
b = c(-4, -3, -2, -1, 0, 1, 2, 3, 4)
hist(x, breaks = b)
hist(x, nclass = 8)
#------------------------------
#barplot
cancers = c(11,16,17,6,12)
names(cancers) =c("breast","bronchus","colon","ovary","stomach")
labels=c("乳癌","支氣管癌","結腸癌","卵巢癌","胃癌")
barplot(cancers)
barplot(cancers, names=labels)
barplot(cancers, names=labels, horiz = T)
barplot(cancers, names=labels, horiz = T, col = c(1,2,3,4,5))
barplot(cancers, names=labels, col = c(1,2,3,4,5), density = 10)
barplot(cancers, names=labels, col = c(1,2,3,4,5), density = 40)
# axis(
#     side=1,#表示在底部建立轴（x轴）
#     at=1:6，#我要标志6个tickmarks
#     tck=-0.2,#tickmarks的长度0.2，方向向外
#     labels=c("I","II","III","IV","V","VI")#6个tickmarks分别对应的标识(labels)就是这六个字符
# )
