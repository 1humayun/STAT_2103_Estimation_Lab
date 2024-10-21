#generating sample of size 20, with parameter lambda = 2
x = rpois(20, 2)
x
#point estimate of mean and variance...
mean_x = mean(x)
mean_x
var_x = var(x)
var_x

#.........(i).......
mean_x_new = rep(0, 10000)

for (i in 1:10000)
{
   x = rpois(20, 2)
   mean_x_new[i] = mean(x)
}
mean(mean_x_new)
#Hence sample mean is an unbiased estimator of population mean.

#.............(ii)...........
var_x_new = rep(0,10000)

for (i in 1:10000)
{
   x = rpois(20, 2)
   var_x_new[i] = var(x)
}
var(var_x_new)
# variance of population 2
# the expected value of the sample variance will be slightly less than lambda due to Bessel's correction.
#Hence sample variance is an unbiased estimator of population variance
