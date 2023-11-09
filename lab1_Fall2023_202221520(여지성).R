#1
mu.r = 0.05
sd.r = 0.10
x.vals = seq(-2.5,3.5, length=150)*sd.r + mu.r
plot(x.vals, dnorm(x.vals, mean=mu.r, sd=sd.r), type="l", lwd=2, 
     ylim=c(0, max(dnorm(x.vals, mean=0.025, sd=0.05))),
     col="black", xlab="x", ylab="pdf")
points(x.vals, dnorm(x.vals, mean=0.025, sd=0.05), type="l", lwd=2,
       col="blue", lty="dotted")
segments(0.02, 0, 0.02, dnorm(0.02, mean=0.05, sd=0.1), lwd=2)
segments(0.01, 0, 0.01, dnorm(0.01, mean=0.025, sd=0.05), lwd=2, 
         col="blue", lty="dotted")
legend(x="topleft", legend=c("Microsoft", "Starbucks"), lwd=2,
       col=c("black", "blue"), lty=c("solid","dotted"))


#2
mu.R = 0.04
sd.R = 0.09
w0 = 100000
q.01.R = mu.R + sd.R*qnorm(0.01)
q.05.R = mu.R + sd.R*qnorm(0.05)
VaR.01 = abs(q.01.R*w0)
VaR.05 = abs(q.05.R*w0)
VaR.01
VaR.05


#3-1)
mu.r = 0.04
sd.r = 0.09
w0 = 100000
q.01.R = exp(mu.r + sd.r*qnorm(0.01)) - 1
q.05.R = exp(mu.r + sd.r*qnorm(0.05)) - 1
VaR.01 = abs(q.01.R*w0)
VaR.05 = abs(q.05.R*w0)
VaR.01
VaR.05


#3-2)
mu.r = 0.04
sd.r = 0.09
w0 = 100000
mu_annual = 12 * mu.r
sd_annual = sqrt(12) * sd.r
q.01_annual = exp(mu_annual + sd_annual * qnorm(0.01)) - 1
q.05_annual = exp(mu_annual + sd_annual * qnorm(0.05)) - 1
VaR_01_annual = abs(q.01_annual*w0)
VaR_05_annual = abs(q.05_annual*w0)
VaR_01_annual
VaR_05_annual