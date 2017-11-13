x <- c(4.39, 2.11, 3.17)
y <- c("apple", "book", "cat")
z <- c(TRUE, FALSE, TRUE)
df <- data.frame(v1 = x, v2 = y, v3 = z)

# df[row,col]
df[2,3]

df[,1]
df[,'v1']
df$v1

df$v1 > 3
which(df$v1 > 3)
df[which(df$v1 > 3),]


