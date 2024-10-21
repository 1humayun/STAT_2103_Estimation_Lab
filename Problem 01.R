#generating sample of size 10, with parameter n=16, p=0.5
x = rbinom(10, 16, 0.5)
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
   x = rbinom(10, 16, 0.5)
   mean_x_new[i] = mean(x)
}
mean(mean_x_new)
#population mean is np = 8
#Hence sample mean is an unbiased estimator of population mean.

#.............(ii)...........
var_x_new = rep(0,10000)

for (i in 1:10000)
{
   x = rbinom(10, 16, 0.5)
   var_x_new[i] = var(x)
}
var(var_x_new)
# variance of population npq = 4 
#Hence sample variance is an unbiased estimator of population variance