# sample script


# population
X = sample(1:10000, size = 2000, replace = TRUE)

# parameters
mu = mean(X)
sigma = sd(X)


# CLT
# xbars follow a Normal distribution (mu, sigma/sqrt(n))
small_sample_size = 30
medium_sample_size = 100
large_sample_size = 1000
sample_sizes = c(small_sample_size, medium_sample_size, large_sample_size)
num_samples = 100

xbars = matrix(0, nrow = num_samples, ncol = 3)

for (n in 1:3){
  for (i in 1:num_samples) {
    xbars[i,n] = mean(sample(X, size = sample_sizes[n]))
  }
}

# distribution
op = par(mfrow = c(1,3))
hist(xbars[,1], xlim = c(2500, 6500))
hist(xbars[,2], xlim = c(2500, 6500))
hist(xbars[,3], xlim = c(2500, 6500))
par(op)



