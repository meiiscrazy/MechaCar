# MechaCar

## MPG Regression
#### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Variables used: Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance, and AWD
The P-value is 5.35e-11 so we can reject the null hypothesis.

#### 2. Is the slope of the linear model considered to be zero? Why or why not?

The R² is 0.71 which means there is a strong correleation between the variables predicting mpg

#### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, all variables are significant in determining mpg for a car. 

![Linear Model]("/resources/linear_model.png")

## Suspension Coil Summary
#### 1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

Looking at the descriptive statistics of the suspension coil data set we can see that the std dev is 8.73 which means that the variance will be under 100 regardless of which way we move the std dev. 
Mean = 1499.53
Median = 1499.75
Variance = 76.23
Std Dev = 8.73

![descriptive stats]("/resources/summary_stats.png")

## Suspension Coil T-Test
#### 1. Provide a small writeup of your interpretation and findings for the t-test results

I separated 3 lots from the suspension coil dataset. I then ran the t-test on each lot while setting the true mean to 1500 PSI. Looking at the p-values for each lot, we fail to reject the null hypothesis for Lot 1 and Lot 2 and we reject the null hypothesis for Lot 3.

p-value for Lot 1 = 1
p-value for Lot 2 = 0.35
p-value for Lot 3 = 0.64

t-test for Lot 1 = 0.12
t-test for Lot 2 = -0.95
t-test for Lot 3 = -0.47

![t-test]("/resources/ttest.png")

## Study Design
### Design a study that compares the performance of the MechaCar prototype vehicle to other comparable vehicles on the market.

#### 1. Think critically about what metrics you would think would be of interest to a consumer (cost, fuel efficiency, color options, etc.).

Let's compare the performance of the MechaCar prototype to a hybrid car; I want to see if the MechaCar can outperform a hybrid car. We would look at cost, fuel efficiency, and mpg. 

#### 2. Determine what question we would ask, what the null and alternative hypothesis would be to answer that question, and what statistical test could be used to test this hypothesis.

Null Hypothesis = MechaCar prototype mpg is better than a hybrid car by 10 mpg
Alternative Hypothesis = MechaCar prototype mpg is not better than a hybrid car by 10 mpg
Statistical Test = 2 sample t-test

#### 3. Knowing what test should be used, what data should be collected?

I would need to gather data from either a specific hybrid car or summarize the hybrid car data and use that data to MechaCar.