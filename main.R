# Title     : TODO
# Objective : TODO
# Created by: hnajles
# Created on: 5/25/20

print("Hello world!")
source("lib/demand-reader.R")

demand <- readDemand('resources/demanda.csv')

padronNumbers <- c(5,9)
hospitals <- getHospitalsByPadron(padronNumbers,'resources/hospitales.csv')

