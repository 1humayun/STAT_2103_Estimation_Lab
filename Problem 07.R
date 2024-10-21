

#............90% CI of mean by simulation............

lam = 1/13000
n = 201

x = rexp(n,lam)
mean = mean(x)
std = sd(x)


UL = mean+1.64*std/sqrt(n)
UL
LL = mean-1.64*std/sqrt(n)
LL









