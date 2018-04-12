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

library(data.table)

# Initial load of data
load('c:/tmp/myFile.RData')

DT[, OLTV := originalBalance / originalValuation]
DT[, CLTV := currentBalance / currentValuation]