# population mean= 1.5 and population variance= 9

#point Estimate of mean and variance...
x = rnorm(1000, 1.5, 3)
mean_x = mean(x)
mean_x
var_x = var(x)
var_x

x.bar <- rep(0,10000)
for (i in 1:10000)
{
   x.bar[i] <- mean(rnorm(1000,1.5,3))
}
mean(x.bar)

# hence sample mean is an unbiased estimator of the population mean.


var <- rep (0,10000)
for (i in 1:10000)
{
   x <- rnorm(1000,1.5,3)    # rnorm(sample size, mean, sd)
   var[i] <- sum((x-mean(x))^2)/(1000-1)
}
mean(var)

# hence sample variance is an unbiased estimator of the population variance.



