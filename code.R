# sample script


# population
X = sample(1:10000, size = 2000, replace = TRUE)

# parameters
mu = mean(X)
sigma = sd(X)


# CLT
# xbars follow a Normal distribution (mu, sigma/sqrt(n))
sample_size = 30

num_samples = 100

xbars = matrix(0, ncol = num_samples)

for (i in 1:num_samples) {
  xbars[i] = mean(sample(X, size = sample_size))
}

# distribution
hist(xbars)

