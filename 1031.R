##PDF
randN <- rnorm(3000)
randD <- dnorm(randN)
library(ggplot2)
p <- ggplot(data.frame(x=randN, y=randD))+aes(x=x, y=y)+
    geom_point()+labs(x="Random Normal Variables", y="Density")
#--------------------------------------------
##plot area < -1
seq1 <- seq(from=min(randN), to=-1, by=.1)
seqND <- data.frame(x=seq1, y=dnorm(seq1))
seqND1 <- rbind(c(min(randN),0), seqND, c(max(seqND$x),0))
p + geom_polygon(data = seqND1, aes(x=x, y=y), color="red")
##
seq2 <- seq(from=-1, to=1, by=.1)
seqND2 <- data.frame(x=seq2, y=dnorm(seq2)) 
seqND3 <- rbind(c(min(seqND2$x), 0), seqND2, c(max(seqND2$x), 0))
p + geom_polygon(data = seqND3, aes(x=x, y=y))
#--------------------------------------------
##CDF
randP <- pnorm(randN)
ggplot(data.frame(x=randN, y=randP)) + aes(x=x, y=y) +
    geom_point() + labs(x="Random Normal Variables", y="Probability")
#--------------------------------------------
##polt Bar chart of bin
data <- data.frame(successes=rbinom(n=10000, size=10, prob=.3))
ggplot(data, aes(x=successes)) + geom_histogram(binwidth = 1)
##compare
binom5 <- data.frame(suc=rbinom(n=10000, size = 5, prob = .3), size=5)
binom10 <- data.frame(suc=rbinom(n=10000, size = 10, prob = .3), size=10)
binom100 <- data.frame(suc=rbinom(n=10000, size = 100, prob = .3), size=100)
binom1000 <- data.frame(suc=rbinom(n=10000, size = 1000, prob = .3), size=1000)
all <- rbind(binom5, binom10, binom100, binom1000)
ggplot(all, aes(x=suc)) + geom_histogram(binwidth = 1) +
    facet_wrap(~size, scales = "free") #free_x, free_y



