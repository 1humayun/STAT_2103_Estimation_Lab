#given
n = 100
mu = 3
sigma = sqrt(2)

#point estimate of mean, midrange, and median
x = rnorm(n, mu, sigma)
p_mean = mean(x)
p_midrange = (max(x)+ min(x))/2
p_median = median(x)
p_mean
p_midrange
p_median

#taking sample mean, midrange, and median
mean_x = rep(0,10^5)
midrange_x = rep (0,10^5) 
median_x = rep (0,10^5)

for ( i in 1:10^5)
{
   x = rnorm (n,mu,sigma)
   mean_x[i] = mean(x)
   midrange_x [i] =  (max(x)+ min(x))/2
   median_x [i] = median(x)
}

## checking unbiasedness...
e_mean_x = mean(mean_x)
e_midrange_x = mean(midrange_x )
e_median_x = mean(median_x)

## calculate variance ...
var_mean_x = var(mean_x )
var_midrange_x = var(midrange_x )
var_median_x = var(median_x )

## Calculate amount of bias ...
bias_mean_x = e_mean_x- mu
bias_midrange_x = e_midrange_x - mu
bias_median_x = e_median_x - mu
bias_mean_x
bias_midrange_x
bias_median_x

## Calculating mean square error to find the best estimator
MSE_mean = var_mean_x+ (bias_mean_x)^2
MSE_midrange = var_midrange_x+ (bias_midrange_x)^2
MSE_median = var_median_x+ (bias_median_x)^2
MSE_mean 
MSE_midrange 
MSE_median

#the MSE of mean lowest then other estimator so mean is the best estimator here.
