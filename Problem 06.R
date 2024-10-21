
# Tabulated value of Std. Normal distribution
 
ztab.upper = qnorm(0.025,lower.tail=FALSE)   # alfa=5%
ztab.lower = qnorm(0.025,lower.tail=TRUE)

CI = (c(ztab.lower ,ztab.upper ))

print (CI)

#...........(i) 95% CI of mean............

x = c(23,3,5,43,5,6,7)
x.bar = mean(x)
sigma = 2.4
n = length(x)

UL = x.bar+ 1.96*sigma/sqrt(n)
UL

LL = x.bar- 1.96*sigma/sqrt(n)
LL

CI = (c(LL ,UL ))
cat("Confidence interval of mean: ", CI, "\n")

#...........(ii) 95% CI of proportion.............
# diesel = 20, gas = 185, total vehical = 205

n = 205
p = 20/n
q = 1-(20/n)

UL = p+1.96*sqrt((p*q)/n)
UL
LL = p-1.96*sqrt((p*q)/n)
LL
cat("Confidence interval of Proportion: ", CI , "\n")

#...........(iii) 95% CI of Variance.............

# Sample data (replace this with your own data)
data = c(15, 18, 20, 22, 25, 28, 30, 32, 35, 38)

# Confidence level (e.g., 95%)
alfa = 0.05

# Degrees of freedom
n = length(data)
df = n - 1

# Calculate sample variance
sample_variance = var(data)

# Calculate chi-squared critical values for the confidence interval

chisq.upper = qchisq(alfa / 2, df,lower.tail=FALSE)
chisq.lower = qchisq(alfa / 2, df,lower.tail=TRUE)

# Calculate confidence interval for population variance
confidence_interval = c(((n - 1) * sample_variance) / chisq.upper , ((n - 1) * sample_variance) / chisq.lower)

cat("Sample Variance:", sample_variance,"\n")
cat("Confidence interval of variance: ", confidence_interval, "\n")













