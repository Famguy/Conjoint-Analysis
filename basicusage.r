# 3 + 3 + 3 + 2 = 11
# 
# 54 => 13 profiles

# calculate model coefficients for 1st guy 
library(conjoint)
data(tea)
caModel(y=tprefm[1,], x=tprof)

# vector of utilities for all attribute levels with intercept on first place
library(conjoint)
data(tea)
caUtilities(y=tprefm[1,], x=tprof, z=tlevn)

# for all respondents
caPartUtilities(y=tpref, x=tprof, z=tlevn)

# estimate the parameters for all respondents
Conjoint(y=tpref, x=tprof, z=tlevn)

# importance of factors
caImportance(y=tpref, x=tprof)

# compare respondents’ preferences (empirical total utilities) with theoretical total utilities
caTotalUtilities(y=tpref, x=tprof)

# see empirical preferences
colnames(tprefm)<-cbind(paste("prof",1:13,sep=""))
tprefm[1:5,]

# matrix of part-worth utilities with the intercept, matrix of total utilities for n profiles and all respondents,
# vector of utilities for attribute levels and vector of percentage attributes’ importance with sum of importance
ShowAllUtilities(y=tpref, x=tprof, z=tlevn)

# rate respondents on three or n clusters using k-means method
caSegmentation(y=tpref, x=tprof, c=3)


