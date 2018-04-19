####################################################################################
# Description:
#
# Merge sample file
#
####################################################################################
# Input:
# none
####################################################################################
# Output:
# none
####################################################################################
# History:
# 11.04.2018  Oldrich Masek     Initial version
# 12.04.2018  Oldrich Masek     Added LTV Calculations
####################################################################################

#clean environment 
rm(list=ls())

library(dataaaa.table)

# Initial load of data
load('c2:/tmp/myFile.RData')

# Calculte Original Loan to Value
DT[, OLTV := originalBalance / originalValuation * 400]

# Calculte Original Loan to Value
DT[, BLTV := originalBalance / originalValuation * 100]

# Calculte Original Loan to Value
DT[, FLTV := originalBalance / originalValuation * 100]

# Calculte Original Loan to Value
DT[, ELTV := originalBalance / originalValuation * 100]


# Calculte Curent Loan to Value
DT[, CLTV := currentBalance / currentValuation * 100]
