# note : if there is anthor solution better than that please drop it
# (1) The following data are the oxygen uptakes (milliliters) during incubation of a 
# random sample of 15 suspensions.
# 14.0, 14.1, 14.5, 13.2, 11.2, 14.0, 14.1, 12.2, 11.1, 13.7, 13.2, 16.0, 12.8, 14.4, 12.9

# (a) Do these data provide sufficient evidence at the .05 level of significance 
# that the population mean is not 12 ml? State clearly the null and alternative
# hypotheses, the P-value, your decision and conclusion.

# let H(o)(null)(mean 1(the population of mean 12) == mean 2(the sample of mean )) and H(a)(alternative)(mean 1 != mean 2)
x<-c(14.0, 14.1, 14.5, 13.2, 11.2, 14.0, 14.1, 12.2, 11.1, 13.7, 13.2, 16.0, 12.8, 14.4, 12.9)
t.test(x,mu=12)
# One Sample t-test
# data:  x
# t = 4.31, df = 14, p-value = 0.0007195
# alternative hypothesis: true mean is not equal to 12
# 95 percent confidence interval:
# 12.71672 14.13661
# sample estimates:
# mean of x 
# 13.42667 

# p-value < .05, then reject H(o)(null)
# uptakes high

# (b) Find 95% confidence Interval for the true population mean
# 13.42667

# (2) The mean time taken for mice to die when injected with 1000 leukemia cells is 
# known to be 12.5 days. When the injection does was doubled in a sample of 10 
# mice, the survival time were 
# 11.7, 10.5, 11.2, 12.9, 12.7, 10.3, 10.4, 10.9, 11.3, 10.6
# If the survival times are normally distributed do the results suggest that the
# increased injection does has decreased survival ship? Let α = 0.1
# let H(o)(null)(mean 1(mean time taken for mice to die when injected with 1000 leukemia cells is  known to be 12.5 days) == mean 2(after the double )) and H(a)(alternative)(mean 1 > mean 2)
x<-c(11.7, 10.5, 11.2, 12.9, 12.7, 10.3, 10.4, 10.9, 11.3, 10.6)
t.test(x,mu=12.5,conf.level = 0.90, alternative = "less")
#        One Sample t-test
# data:  x
# t = -4.2556, df = 9, p-value = 0.001062
# alternative hypothesis: true mean is less than 12.5
# 90 percent confidence interval:
#     -Inf 11.65624
# sample estimates:
# mean of x 
#    11.25 
# p-value < .1, then reject H(o)(null)

# (3) The following are the average weekly losses of man-hours due to accidents in 9 
# industrial plants before and after a certain safety program was put into operation.
# Before the safety program 45 73 46 124 33 57 83 34 17
# After the safety program 44 65 44 119 35 56 80 31 11
# Use the 0.05 level of significance to test whether the safety program is effective. 
#  State, clearly, H0 and Ha, your decision and the conclusion.
# let H(o)(null)(mean 1(mean of weekly loss before new program) == mean 2(mean of weekly loss after new program)) and H(a)(alternative)(mean 1 != mean 2)
x<-c(45, 73, 46, 124, 33, 57, 83, 34, 17)
y<-c(44 ,65 ,44 ,119 ,35 ,56 ,80 ,31 ,11)
t.test(x,y,paired =TRUE,alternative='g')
t.test(x,y,paired =TRUE)
#        Paired t-test
# data:  x and y
# t = 3, df = 8, p-value = 0.008536
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
# 1.140452      Inf
# sample estimates:
# mean of the differences 
#                      3 
# p-value < .1, then reject H(o)(null)
# the new program work effectively

# (4) Researcher wished to know if they could conclude that two populations of infants 
# differ with respect to mean age at which they walked alone. The following data 
# (ages in months) were collected
# Sample from population A: 9.5, 10.5, 9.0, 9.75, 10.0, 13.0, 10.0, 13.5, 10.0, 9.5, 10.0, 9.75
# Sample from population B: 12.5, 9.5, 13.5, 13.75, 12.0, 13.75, 12.5, 9.5, 12.0, 13.5, 12.0, 12.0

# (a) What should the researchers conclude? Let α = .05.
# let H(o)(null) ( mean 1(mean of first population)== mean 2(mean of second population)) and H(a)(alternative)(mean 1 != mean 2)
x<-c(9.5, 10.5, 9.0, 9.75, 10.0, 13.0, 10.0, 13.5, 10.0, 9.5, 10.0, 9.75)
y<-c(12.5, 9.5, 13.5, 13.75, 12.0, 13.75, 12.5, 9.5, 12.0, 13.5, 12.0, 12.0)
t.test(x,y,var.equal = TRUE)
#        Two Sample t-test
# data:  x and y
# t = -3.1561, df = 22, p-value = 0.004582
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
# -3.0380320 -0.6286346
# sample estimates:
# mean of x mean of y 
# 10.37500  12.20833 
# p-value < .05, then reject H(o)(null)
# second group more good

# (b) Test the hypothesis that the variances of the two populations are equal. Use α = .02.
var.test(x,y,conf.level=.98)
#        F test to compare two variances
# data:  x and y
# F = 0.92786, num df = 11, denom df = 11, p-value = 0.9034
# alternative hypothesis: true ratio of variances is not equal to 1
# 98 percent confidence interval:
# 0.2079274 4.1405290
# sample estimates:
# ratio of variances 
#         0.9278629 
# The test is not significant