# Note this my solution if my solution is wrong please inform me.

# (1) Copy the built in data set "trees" into a new data frame "trees.copy" and answer the following questions:
trees.copy=data.frame(trees)
# (a) Calculate the variance of the volume with heights greater than 71
treesVolume=c()
for( i in 1:nrow(trees.copy)){
    if(trees.copy[i,2]>71)treesVolume=c(treesVolume,trees.copy[i,3])
}
varianceTreesVolume=var(treesVolume)
#  270.3991

# (b) Calculate the mean volume of heights between 60 and 80
treesVolume=c()
for( i in 1:nrow(trees.copy)){
    if(trees.copy[i,2]>=60&trees.copy[i,2]<=80)treesVolume=c(treesVolume,trees.copy[i,3])
}
meanTreesVolume=mean(treesVolume)
#  26.97917

# (c) The correlation coefficient between the girth and the volume =……………..
cor(trees.copy["Girth"],trees.copy["Volume"])
#         Volume
# Girth 0.9671194 <-------correlation

# (2) Two samples of plants of the same variety were grown in two types of soil A and B in a greenhouse, and after a fixed time they were removed and dried. Their dry weights were:
# Type A: 27.5, 22.3, 24.7, 26.1, 26.5, 20.0, 31.0, 25.3, 28.6 , 24.9 
# Type B: 31.8, 30.3, 26.4, 24.2, 27.8, 29.1, 25.5, 28.9, 30.0, 31.7 .
# Does the soil B have the effect on increasing the weights of the plants than of type A? 
# Let α = 0.01. State clearly H0, Ha, decision rule and conclusion.
# let H(0)(mean of population A == mean of population B),H(a)(mean of population A < mean of population B)
x<-c(27.5, 22.3, 24.7, 26.1, 26.5, 20.0, 31.0, 25.3, 28.6 , 24.9)
y<-c(31.8, 30.3, 26.4, 24.2, 27.8, 29.1, 25.5, 28.9, 30.0, 31.7)
t.test(x,y,var.equal=TRUE,alternative="less",conf.level=.99)
#        Two Sample t-test
# data:  x and y
# t = -2.2622, df = 18, p-value = 0.01815
# alternative hypothesis: true difference in means is less than 0
# 99 percent confidence interval:
#      -Inf 0.3694287
# sample estimates:
# mean of x mean of y 
#    25.69     28.57 
# p-vlaue<0.00, then -> reject H(0)

# (3) Find the value of (
# 1  2 5 8               40 
#   + + + +.............. +
#    3 6 9               41
#), write the command(s).
1+sum(seq(2,40,3)/seq(3,41,3))+(40/41)
#  13.91557

# (4) Suppose that 2% of the people on the average are left-handed. Find the probability that at least four are left-handed among 200 people.
# p(X>=4)=1-P(X<4)
lmada=0.02*200
ppois(4,lmada)
# 0.6288369