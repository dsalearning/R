data()
dat <- iris

#######

head(dat, n = 50)
tail(dat)
str(dat)

#######

# Data preprocessing
summary(dat)

#######

dat$Species == 'setosa'
which(dat$Species == 'setosa')
dat[which(dat$Species == 'setosa' &
          dat$Petal.Width < mean(dat$Petal.Width)), ]

dat$Petal.Width < mean(dat$Petal.Width)


max(dat$Petal.Width)


########
dat2 <- dat[which(dat$Species == 'setosa' & dat$Petal.Width < mean(dat$Petal.Width)), ]
write.csv(dat2, file = 'iris.csv', row.names = F)

dat3 <- read.csv(file = 'iris.csv')

