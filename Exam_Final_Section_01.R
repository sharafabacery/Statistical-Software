# Note this my solution if my solution is wrong please inform me.

# (1) Researchers wished to know if they could conclude that given two populations A and 
# B of infants, the population A is earlier than population B with respect to the mean 
# age at which an infant started to walk alone. The following data (ages in months) were collected
# Sample from population A: 9.5, 10.5, 9.75, 10.0, 13.0, 13.5, 10.0, 9.5, 10.0, 9.75
# Sample from population B: 12.5, 13.5, 12.0, 13.75, 12.5, 9.5, 12.0, 13.5, 12.0
# What should the researchers conclude? Let α = 0.01. State clearly H0, Ha, decision rule and conclusion.
# let H(0)(mean of population A == mean of population B),H(a)(mean of population A < mean of population B)
x<-c(9.5, 10.5, 9.75, 10.0, 13.0, 13.5, 10.0, 9.5, 10.0, 9.75)
y<-c(12.5, 13.5, 12.0, 13.75, 12.5, 9.5, 12.0, 13.5, 12.0)
t.test(x,y,var.equal=TRUE,alternative="less",conf.level=.99)
#    Two Sample t-test
# data:  x and y
# t = -2.8624, df = 17, p-value = 0.005394
# alternative hypothesis: true difference in means is less than 0
# 99 percent confidence interval:
#       -Inf -0.1869249
# sample estimates:
# mean of x mean of y 
# 10.55000  12.36111 
# p-vlaue<0.00, then -> reject H(0)

# (2) Copy the built in data set "cars" into a new data frame "cars.copy" and answer the following questions:

# (a) Calculate the standard deviation of the speed recording distances less than 35
cars.copy <- data.frame(cars)
dist=cars.copy["dist"]
speed=cars.copy["speed"]
speeds <- c()
for (i in 1:nrow(dist)) {
   if(dist[i,]<35){
        speeds<-c(speeds,speed[i,])
   }
}
speedsd=sd(speeds)
speedsd
# 3.84458

# (b) Construct a histogram for cars with speed less than or equal to 19
speed=cars.copy["speed"]
speeds <- c()
for (i in 1:nrow(speed)) {
   if(speed[i,]<=19){
        speeds<-c(speeds,speed[i,])
   }
}
hist(speeds)
# (c) From (b), the modal class is the class number ………………..
# fifth one with 8 frequency ,interval (12,14)

# (3) A company produces computer chips of which 30% are defective, 8 chips are chosen 
# at random, what is the probability that at least 5 chips will be undefective.
# p(undefective) = .7 , n=8, p(X>=5)=1-p(x<5)
1-pbinom(5,8,.7)
# 0.5517738
# (4) Find the value of (
# 1 - 2 - 4 - 6 - 38
# _   _   _  _    _ 
# 1   3   5  7    39
# ), write the command(s)
1-sum(seq(2,38,2)/seq(3,39,2))
# -16.52033