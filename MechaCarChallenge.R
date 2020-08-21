library(tidyverse)

### MPG Regression

# Import dataset
mpg_table = read.csv("MechaCar_mpg.csv")
suspension_table = read.csv("Suspension_Coil.csv")
#Create Multiple Line Regressions
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mpg_table)
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mpg_table))

# Suspension Coil Summary
# Create a statistics table for the suspension coil’s pounds-per-inch continuous variable.
summary_suspension_table = suspension_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), StdDev_PSI=sd(PSI))
summary_suspension_table

# Suspension T-Test
lot_1 = suspension_table %>%filter(Manufacturing_Lot == "Lot1")
lot_2 = suspension_table %>%filter(Manufacturing_Lot == "Lot2")
lot_3 = suspension_table %>%filter(Manufacturing_Lot == "Lot3")

t.test((lot_1$PSI), mu=1500)
t.test((lot_2$PSI), mu=1500)
t.test((lot_3$PSI), mu=1500)