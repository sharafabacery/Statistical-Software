# (1) The city’s transportation department is interested in studying the relationship 
# between the temperature and the number of passengers that ride the main bus line 
# in order to better serve their customers. The manager recorded the temperature at 
# the beginning of the hour, and then had a bus driver record the number of 
# passengers that boarded the bus throughout the hour. Their findings are listed below.
# Temperature 42 ,37,46 ,30 ,50 ,43,43,46.46.49
# passengers  173,149,185,123,201,174,175,188,186,198
# The manager wishes to predict the number of passengers using temperature.

x=c(42 ,37,46 ,30 ,50 ,43,43,46,46,49)
y=c(173,149,185,123,201,174,175,188,186,198)
line=lm(y~x)
# (a) Calculate the least squares estimates of the coefficients of the regression line. 
least_squares_estimates=sum(resid(line)*resid(line))
#  15.71033

# (b) Find the regression equation describing the linear relationship between the two variables.
line=lm(y~x)
# Call:
# lm(formula = y ~ x)
# Coefficients:
# (Intercept)            x  
#      4.413        3.953  

# Y=3.953*X+4.413

# (c) Draw the resulting regression equation on the scatter plot 
plot(x,y)
abline(line)

# (d) Predict the number of passengers when temperature is at 45 degrees.
temp=data.frame(x=c(45))
predict(line,int="p",newdata=temp)
#        fit      lwr      upr
# 1 182.3161 178.9112 185.7211

# (e) For the pair of data (temperature = 42, passengers = 173), that is, observation one, what is the residual?
temp=data.frame(x=c(42))
predict(line,int="p",newdata=temp)
pssenger=170.4559
residual=170.4559-173=-2.5441

# (f) Estimate the variance 
summary(line)
# Call:
# lm(formula = y ~ x)
# Residuals:
#    Min      1Q  Median      3Q     Max 
# -1.6889 -0.9147 -0.1996  0.4392  2.5441 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  4.41310    3.42575   1.288    0.234    
# x            3.95340    0.07863  50.276 2.71e-11 ***
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# Residual standard error: 1.401 on 8 degrees of freedom
# Multiple R-squared:  0.9968,    Adjusted R-squared:  0.9965 
# F-statistic:  2528 on 1 and 8 DF,  p-value: 2.713e-11

# from summary we can know that Residual standard error: 1.401
Residual_standard_error= 1.401
variance=Residual_standard_error^2
# 1.962801

# (g) Visualize the residuals.
plot(fitted(line),resid(line))

# (2) In a study of the effect of a dietary component (X) on plasma lipid composition (Y), the following data were obtained on a sample of 15 experimental animals
# X 18 21 28 35 47 33 40 41 28 21 30 46 44 38 19
# Y 38 40 49 54 66 52 57 62 47 39 49 65 65 56 38

X=c(18 ,21 ,28 ,35 ,47 ,33 ,40 ,41 ,28 ,21 ,30 ,46 ,44 ,38 ,19)
Y=c(38 ,40 ,49 ,54 ,66 ,52 ,57 ,62 ,47 ,39 ,49 ,65 ,65 ,56 ,38)
# (a) Find the regression equation describing the linear relationship between the two variables.
line=lm(Y~X)
# Call:
# lm(formula = Y ~ X)
# Coefficients:
# (Intercept)       X  
#    19.032        1.005  
# Y=1.005*X+19.032

# (b) Find the coefficient of determination and your conclusion.
summary(line)
# Call:
# lm(formula = Y ~ X)
# Residuals:
#     Min      1Q  Median      3Q     Max 
# -2.2382 -0.2718 -0.1866  0.3729  1.8238 
# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 19.03157    1.08229   17.58 1.91e-10 ***
# X            1.00517    0.03184   31.57 1.13e-13 ***
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# Residual standard error: 1.188 on 13 degrees of freedom
# Multiple R-squared:  0.9871,    Adjusted R-squared:  0.9861 
# F-statistic: 996.8 on 1 and 13 DF,  p-value: 1.127e-13

# from summary:
# coefficient of determination==Multiple R-squared=.9871
# because it near to 1 for this the equation is very good 

# (c) Predict the plasma lipid composition for an animal whose dietary component is 50.
plasma=data.frame(X=c(50))
value=predict(line,int="c",newdata=plasma)
#       fit      lwr      upr
# 1 69.2899 67.92179 70.65801

# (d) Calculate the sample correlation coefficient.

# from summary:
# sample correlation coefficient=sqrt(coefficient of determination)=
correlation=sqrt(.9871)
# 0.9935291

# (e) Determine if the regression of Y on X is significant? 
# it is significant because (p) value of coefficients is near to zero and (p-value) is small for that is fitted well

# (f) Calculate the residuals, and plot them
plot(fitted(line),resid(line))