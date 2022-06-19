# note : if there is anthor solution better than that please drop it
# Each person in a random sample of 10 employees was asked about X, the daily 
# time wasted at work doing non-work activities, such as using the internet and 
# emailing friends. The resulting data, in minutes, are as follows:
# 108, 112, 117, 130, 111, 131, 113, 113, 105, 128.
# Is it okay to assume that these data come from a normal distribution with mean 120 and standard deviation 10?
# let H(o)(null) ( mean 1== mean 2) and H(a)(alternative)(mean 1 != mean 2)
x<-c(108, 112, 117, 130, 111, 131, 113, 113, 105, 128)
t.test(x,mu=120)
#        One Sample t-test
# data:  x
# t = -1.0709, df = 9, p-value = 0.3121
# alternative hypothesis: true mean is not equal to 120
# 95 percent confidence interval:
#  110.0404 123.5596
# sample estimates:
# mean of x 
#    116.8 
# p-value >.05
# then failed to reject H(O)
