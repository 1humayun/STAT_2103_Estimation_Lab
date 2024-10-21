
#likelihood function of normal distribution for given data...

data = c(23,3,5,43,5,6,7,9)

normal.log.lik = function(y,theta){
mu=theta[1]
sigma2=theta[2]
n=length(y)
log.lik = -.5*n*log(2*pi) -.5*n*log(sigma2)-sum((y-mu)**2)/(2*sigma2)
return(-log.lik)        #Return the negative log-likelihood (to minimize)
}

MLE=optim(c(mu=0,sigma2=1),normal.log.lik,y=data)
MLE$par




#Likelihood function of normal distribution for simulated data...

set.seed(123) 
data = rnorm(1000, mean = 2, sd =9)

normal.log.lik2=function(x, theta){
mu=theta[1]
sigma=theta[2]
n=length(x)

log.lik2 =  sum(dnorm(x, mean = mu, sd = sigma, log = TRUE))    # Calculate the log-likelihood
  
return(-log.lik2)     #Return the negative log-likelihood (to minimize)
}

MLE = optim(c(mu=mean(x), sigma=sd(x)), normal.log.lik2, x=data)
MLE$par






















