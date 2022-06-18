# (1)  Generate a sample of random normal deviates, and a sample of random exponential deviates each of size 100

# sample of random normal deviates (100)
rnorm(100)
#   1.53405461  0.60416148  0.12036646  1.61561461  0.12605766 -1.11025808
#  -1.83224477 -0.02096306  0.71593094  0.37025847 -1.43013494  1.71905802
#   0.67447266  1.08436400  0.99916548 -1.78997985 -0.69561426  0.52332327
#   0.49777672 -0.95666063  0.33885007  0.27267738  0.74973410  0.61821149
#   1.37901442 -0.25116297  0.99458415 -0.36793159  1.94545827  1.70432540
#   2.58146113  0.75432309 -0.09212293 -0.34114484 -0.01347084  0.77731717
#  -1.08749296 -1.06857236 -0.30905389  1.13817308 -1.19590050  0.94584301
#   0.93610290 -0.98365379  1.49028415  1.16935329  0.91262418  0.61469264
#   0.39733496  1.45754552 -0.62197645  0.19475837  0.09948741  0.50144485
#   0.90120437  1.51084251 -0.36105105  0.20256046  0.19238464  0.71839519
#   1.04881776 -0.43734722 -2.66105517  0.40362517  0.22838779 -0.13725314
#   0.79424849 -0.84032070  1.53496422 -1.69214024  1.06679634  0.29411254
#  -0.15998149  0.96065644 -0.14615403  0.93223291 -0.20999377 -1.17899846
#   1.42410236 -2.66774535 -0.71780676  0.02371827 -0.29119423  1.79098388
#   0.67832629 -0.60888544 -1.51271880  1.01169506 -0.66715760  0.46234905
#   1.91678072  0.64533761 -0.52197350 -0.90588605 -1.22901604 -0.63840487
#   0.05087858  0.46296745  0.68154237 -1.09371399

# sample of random exponential deviates(100)
rexp(100)
#  1.058163575 0.824313232 0.473296283 0.701218872 1.583303389 0.230378383
#  0.597873656 1.120736618 1.030814611 1.180006010 0.459888664 0.158174579
#  0.988548629 2.305555608 1.687377652 2.770161116 0.111653496 1.773702040
#  0.578744159 0.918873982 5.829519356 1.925730989 0.344783458 0.915817572
#  0.259348408 0.149146186 0.690354445 2.991314545 0.756808042 0.413205110
#  2.565934816 4.766540248 0.666495448 0.164688776 0.084952755 0.727616548
#  0.270155998 1.514250258 1.359625443 0.635084544 0.143931529 2.152818741
#  1.037866963 0.755267236 0.066740887 1.456410207 0.069180155 0.107681450
#  1.848477645 0.021908127 2.446676271 0.477873448 0.214748777 0.926517390
#  0.547596760 1.382832480 4.745621998 1.947030073 0.164708059 2.187340466
#  1.508362736 2.908650292 1.266559545 0.389560972 0.158499635 0.623632530
#  0.227194565 1.109972586 0.404302301 0.648869130 0.229543899 0.697526960
#  2.050859947 0.088187709 2.037606090 0.395244688 1.496748628 0.543587829
#  2.523710901 1.166917970 0.012847383 0.248419366 1.998443747 0.241217639
#  1.889063677 0.094592934 0.423597302 0.414304506 0.379252150 0.225201806
#  0.002174785 0.078159608 0.642135274 0.523214020 4.093938356 1.483202697
#  0.829958482 1.014410907 0.576034187 1.145302830

# (2) Calculate the probability for each of the following events: 

# (a) A standard normally distributed variable is larger than 3.
1-pnorm(3)
# 0.001349898

# (b) A normally distributed variable with mean 35 and standard deviation 6 is larger than 42. 
# p(X>42) with mean 35 and sd = 6 === 1-p(X<42) with mean 35 and sd = 6
1-pnorm(42, mean = 35, sd = 6)
# 0.1216725

# (c) Getting 10 out of 10 successes in a binomial distribution with probability 0.8. 
dbinom(10,size=10,prob=.8)
# 0.1073742

# (d) X < 0.9 when X has the standard uniform distribution. 
punif(.9)
# 0.9

# (e) X > 6.5 in a X-distribution with 2 degrees of freedom.
pchisq(6.5,2)
# 0.9612258

# (3) Use the sample function to obtain a random sample of 10 realizations in a biased coin experiment in which the probability of obtaining Head is 0.3
sample(c("H","T"), 10, replace = TRUE, prob = c(.3,.7))
# "T" "T" "T" "T" "T" "T" "H" "H" "T" "H"

# (4) Let 𝑋~𝑁(0,1) and 𝑌 ~ 𝐸𝑥𝑝(2). Compute 𝑃(𝑋>1.644) and find 𝑞 such that 𝑃(𝑌<𝑞) =0.75

# P(X>1.644) = 1-P(X<1.644)
1-pnorm(1.644)
# 0.0500881

# P(Y<q)=.75
qexp(.75,1/2)
# 2.772589

# (5) Acompany produces computer chips of which 40% are undefective, 7 chips are  chosen at random, what is the probability that:
# n=7 p(undefective)=.4 then p(defective)=1 - .4 = .6

# (a) exactly 3 chips will be defective.
# p(X=3)
dbinom(3,7,.6)
# 0.193536

# (b) at most 5 chips will be defective. 
# p(x<5)
pbinom(5,7,.6)
#  0.8413696

# (c) at least 5 chips will be defective.
# p(x>5)=1-p(x<5)
1-pbinom(5,7,.6)
# 0.1586304

# (6) The time of failure of a certain component has an exponential distribution with mean 4 years. Simulate failure times of 20 of these components.
# Note-----> word Simulate in this question = random number from exponential

rexp(20,1/4)
#  1.4439083  3.4485556  2.5295638  1.7035058  6.2239526  4.2540104
#  11.9344699 15.2798223  2.3383481  6.5407969  0.9217208  3.6070311
#  2.4472321  8.3771791  0.8270630  1.2482830  5.7395173  2.5533308
#  7.2954100  9.3152156

# (7) If X has a normal distribution with mean 400 and standard deviation 50, find:
# mean=400 , sd=50 

# (a) P(360 <= X <= 469)
# p(x<=469) - p(x<=360)
pnorm(469,400,50) - pnorm(360,400,50)
# 0.7043513

# (b) P(X <= 600)
pnorm(600,400,50)
#  0.9999683

# (c) P(X > 600) = 1 - P(X <= 600)
1-pnorm(600,400,50)
#  3.167124e-05

# (8) If 2% of the books bound at a certain bindery have defective bindings, use the Poisson 
# approximation to the binomial distribution to determine the probability that five of 
# 400 books bound by this bindery will have defective bindings.

# P(X=5) , p=.02 and n=400 
# to change from binom to Poisson
# lamada = mean = n*p = 400 *.02

lam=400*.02
dpois(5,lam)
# 0.09160366

# (9) Toss a coin three times and let X be the number of Heads observed which can be described by the following probability distribution:
# X      0   1   2   3
# p(xi) 1/8 3/8 3/8 1/8

# (a) Use the sample function to obtain a random sample of 100 realizations of the number of Heads observed in the three times. 
x<-sample(c(0,1,2,4), 100, replace = TRUE, prob = c(1/8,3/8,3/8,1/8))
# 2 0 2 4 2 2 1 1 1 1 2 1 1 1 1 4 0 2 1 2 0 4 0 2 2 2 1 2 1 0 2 4 0 4 1 2 1
# 1 2 1 1 4 4 0 4 0 1 2 1 4 2 2 0 2 2 2 0 2 4 1 2 0 2 1 1 2 4 1 2 2 2 1 4 2
# 2 4 0 1 4 1 2 4 2 2 1 2 0 2 1 2 0 4 4 0 0 1 2 0 1 1

# (b) Sketch the CDF of X
plot(ecdf(x))