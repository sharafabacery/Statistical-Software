# (1) Describe the built-in R-data set "trees":

# (a)  Perform a summary of all variables in "trees ".
summary(trees)
#     Girth           Height       Volume     
# Min.   : 8.30   Min.   :63   Min.   :10.20  
# 1st Qu.:11.05   1st Qu.:72   1st Qu.:19.40  
# Median :12.90   Median :76   Median :24.20  
# Mean   :13.25   Mean   :76   Mean   :30.17  
# 3rd Qu.:15.25   3rd Qu.:80   3rd Qu.:37.30  
# Max.   :20.60   Max.   :87   Max.   :77.00  

# (b) Examine the two measures of center for the variable Volume:
# from previous question (a) show that:
# Volume----> mean = 30.17 & median = 24.40

# (c) Compute the mean of Height:
mean(trees$Height)
# 76

# (d) Which variable has the highest standard deviation:
Grithsd<-sd(trees$Girth); 
Heightsd<-sd(trees$Height);
Volumesd<-sd(trees$Volume);
maxSd<-max(c(Grithsd,Heightsd,Volumesd));
if(maxSd==Grithsd){
    print("Girth sd is max = ")
}else if (maxSd==Heightsd) {
   print("Height sd is max = ")
}else{
    print("Volume sd is max = ")
}
print(maxSd)

# (e) What are the standard deviations of these variables:
Grithsd<-sd(trees$Girth); 
Grithsd
Heightsd<-sd(trees$Height);
Heightsd
Volumesd<-sd(trees$Volume);
Volumesd

# (f) Calculate the maximum and minimum value of Girth in one command:
range(trees$Girth)
#   8.3 20.6

# (g) Calculate the inter quartile range of Volume
IQR(trees$Volume)
# 17.9

# (h) Construct the boxplot of the tree data, are there outliers? Explain.
boxplot(trees)
# In Volume data there is outlier the maxium very high to the others

# (2) Consider the quadratic function
x<- -4:4
y<-4*x^2 + 2*x + 5
plot(x, y,type = "p")
plot(x, y,type = "l")

# (3) Describe the built-in R-data set " airquality"

# (a) Create a data frame called " airquality1" and insert the airquality into it
airquality1=data.frame(airquality,na.rm=T)

# (b) Calculate the mean and the variance of Ozone data
meanOzone=mean(airquality$Ozone, na.rm=TRUE)
meanOzone
# 42.12931
varOzone=var(airquality$Ozone, na.rm=TRUE)
varOzone
# 1088.201

# (c) Make a description statistics of the Solar.R data
summary(airquality$Solar.R)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#    7.0   115.8   205.0   185.9   258.8   334.0       7 
  
# (d) Calculate the deciles of the Temp data
quantile(airquality$Temp,seq(0,1,.1))
#  0%  10%  20%  30%  40%  50%  60%  70%  80%  90% 100% 
# 56.0 64.2 69.0 74.0 76.8 79.0 81.0 83.0 86.0 90.0 97.0 

# (e) Calculate the 35th , 45th and the 67th percentiles of the Wind data
quantile(airquality$Wind, probs = c(.35,.45,.67))
#  35%   45%   67% 
# 8.12  9.20 11.50 

# (f) Construct a plot of Temp against a Day
plot(airquality$Temp,airquality$Day)

# (g) Create a boxplot of Month data
boxplot(airquality$Month)

# (h) Draw the histogram of Ozon data
hist(airquality$Ozon) 

# (i) Give visual summaries of all variables
summary(airquality)
#     Ozone           Solar.R           Wind             Temp           Month            Day      
# Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00   Min.   :5.000   Min.   : 1.0  
# 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00   1st Qu.:6.000   1st Qu.: 8.0  
# Median : 31.50   Median :205.0   Median : 9.700   Median :79.00   Median :7.000   Median :16.0  
# Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88   Mean   :6.993   Mean   :15.8  
# 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00   3rd Qu.:8.000   3rd Qu.:23.0  
# Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00   Max.   :9.000   Max.   :31.0  
# NA's   :37       NA's   :7                                                                      
