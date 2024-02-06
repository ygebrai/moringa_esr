#install.packages("endoSwitch")
library(dplyr)
library(endoSwitch)
library(help="endoSwitch")
library(readr)

data("ImpactData")

dat <- read_csv("Moringa_coded_all.csv")


ndata <- sapply(dat, is.numeric)

ndat <- dat[, ndata]

ndat[ndat == -999] <- NaN


head(y)

y = ndat$moringa


log_out <- glm(y ~ total_land + ndat$food_supply_cover +
                 ndat$yrs_farming + household_total, data = ndat, family = binomial(link=probit))
log_out
summary(log_out)

ndat$

OutcomeDep <- 'Output'
SelectDep <- 'CA'
OutcomeCov <- c('Age')
SelectCov <- c('Age', 'Perception', 'Land_holding')
endoReg <- endoSwitch(ImpactData, OutcomeDep, SelectDep, OutcomeCov, SelectCov)
summary(endoReg)

