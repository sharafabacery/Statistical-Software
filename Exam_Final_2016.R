# (1) Write the suitable R command(S) to determine the following:

# (a):
Orange.Copy=data.frame(Orange)
# load Orange data to Orange.Copy data frame

# (b):
age=Orange.Copy$age
circumference=Orange.Copy$circumference
ageToGetMean=c()
for(i in 1:length(circumference)){
    if(circumference[i]>180){
        ageToGetMean=c(ageToGetMean,age[i])
    }
}
meanage=var(ageToGetMean)
# 14700

# (c):
quantile(Orange.Copy$age, probs = c(.44,.7))
#   44%    70% 
# 990.4 1231.0 

# (d):
age=Orange.Copy$age
Tree=Orange.Copy$Tree
ageToTest=c()
for(i in 1:length(Tree)){
    if(Tree[i]==4){
        ageToTest=c(ageToTest,age[i])
    }
}
meanage=mean(ageToTest)
#  922.1429

# (e):
iqr=IQR(Orange.Copy$circumference)
#  96

# (f):
age=Orange.Copy$age
ks.test(age,"exp")
#        One-sample Kolmogorov-Smirnov test
# data:  ageToTest
# D = Inf, p-value < 2.2e-16
# alternative hypothesis: two-sided

# (g):
Orange.Copy=edit(Orange.Copy)
# it will open a window to edit the data and when it open you can add class column

# (h):
test=t.test(Orange.Copy$circumference, conf.level=.8 )
#        One Sample t-test
# data:  Orange.Copy$circumference
# t = 11.923, df = 34, p-value = 1.076e-13
# alternative hypothesis: true mean is not equal to 0
# 80 percent confidence interval:
#  103.1571 128.5572
# sample estimates:
# mean of x 
# 115.8571 
# true mean = 115.8571

# (i):
age=Orange.Copy$age
circumference=Orange.Copy$circumference
linearLine=lm(age~circumference)
# Call:
# lm(formula = age ~ circumference)
# Coefficients:
#   (Intercept)  circumference  
#        16.604          7.816  
# age=7.816*circumference+16.604

# (j):
# Multiple R-squared is near to 1 then model is good fit
summary(linearLine)
# Call:
# lm(formula = age ~ circumference)
# Residuals:
#     Min      1Q  Median      3Q     Max 
# -317.88 -140.90  -17.20   96.54  471.16 
# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)    
# (Intercept)    16.6036    78.1406   0.212    0.833    
# circumference   7.8160     0.6059  12.900 1.93e-14 ***
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# Residual standard error: 203.1 on 33 degrees of freedom
# Multiple R-squared:  0.8345,    Adjusted R-squared:  0.8295 
# F-statistic: 166.4 on 1 and 33 DF,  p-value: 1.931e-14
# Multiple R-squared=0.8345 and it near to 1 then it good fit

# (k):
cir=data.frame(circumference=c(100,200))
predict(linearLine,int="p",newdata=cir)
#         fit      lwr      upr
# 1  798.2035  378.681 1217.726
# 2 1579.8033 1148.092 2011.515
# 100 --> 798.2035
# 200 --> 1579.8033

# (2):
#    (I):
#       (a):
# size = 7 , defective pro=.4 ,  undefective pro=.4
dbinom(3,7,.4)
# 0.290304

#       (b):
1-pbinom(5,7,.6)
#  0.1586304

#    (II):
sample(0:200,250,replace=TRUE)
# 2  62 148  34  66  89  69 121 140 172 110 148 182  64 153 140 160  29
# 49 164 149   9 118  22  66 192 184  71 183 173  84  65 148  72 183  83
# 180  25  91 187  88 167  60 132 158  29  75  44 183  66 171 146 132 110
# 46 158  18 133 192 101 142  63 142  63  62  35 177  13 147  90 111 134
# 3 148  82 166 181  43 181 119 172 185 123  21  74  19 185  78  15 191
# 88 143 176 118  42 182  84  77  62  67   5 106 160   1  11 134 148  26
# 2  56 104 194 128  99   5  70  44 162  64 133 120  95  29  83 155  36
# 129  88  90 137   7  83  84 171  44  75 190 174 162 133   5   2 169  15
# 46  59 153 101  11 158 160  78 163 109  49  73 118 168  12 144 102 200
# 62  35 136  63 121  58 138 166 197  50  28 155 181  10  59  15 157 101
# 29  81 134 185 198  40 119  56  41  69  58 153 152 131 146  13 145  91
# 195  29  52 177  40  62  13  35  73 110 175 110  83  70 124  85  16  84
# 99  16 102   4 154 104  16 174 168   1  80  91  50  22 187 196 133  40
# 110  23  80 106  53  93 188  79 137 115  54 106 133 151 168  70

# (3):
#    (a):
# H(o)(mean of number of heartbeats before experiment == mean of number of heartbeats after experiment)
# H(a)(mean of number of heartbeats before experiment < mean of number of heartbeats after experiment)
x=c(70,84,85,110,105,100,110,67,79)
y=c(76,88,96,111,121,112,110,90,96)
t.test(x,y,paired=TRUE,conf.level=.98,alternative="less")
#        Paired t-test
# data:  x and y
# t = -3.8255, df = 8, p-value = 0.002525
# alternative hypothesis: true difference in means is less than 0
# 98 percent confidence interval:
#      -Inf -3.598195
# sample estimates:
# mean of the differences 
#                    -10 
# (p-value<0.02) then reject H(o)

#    (b):
boxplot(x,y)
# In boxPlot there is no outlier.

# (4):
myFun<-function(n){
    xvec=rnorm(n,4,sqrt(3))
    xvec2=sqrt(abs(xvec-mean(xvec)))
    counter=0
    counter2=0
    for(i in 1:n){
        if(xvec[i]%%2)counter=counter+1
        if(xvec2[i]%%2)counter2=counter2+1
    }  
}
# I make the algorithm in exam but the exam did not describe what I will do with values (return it or just print it inside the function)
# and it did not descibe which vector will get value from it (xvec or xvec2) 