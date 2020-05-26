
readDemand <- function(fileName) {
    cases <- read.csv(file = fileName)
    print(cases$dia)
}

last <- function(str) {
  l <- length(str)
  substr(str,l-2,l-1)
}

readHospitals <- function(fileName){
  hospitals <- read.csv(file = fileName)
}

findHospital <- function(hospitals, padron){
  c <- 1
  qty <- length(hospitals)
  
  while(c < qty){
    if(endsWith(hospitals[1,c], last(padron)))
      return(hospitals[1,c])
    else c = c + 1
  }
  NULL
}

getHospitalsByPadron <- function(padronNumbers, fileName) {
  all <- readHospitals(fileName)
  padronQty  <- length(padronNumbers)
  hospitals <- vector()
  for(i in 1:padronQty){
    
    found<- findHospital(all, padronNumbers[i])
    if(!is.null(found))append(hospitals,found)
  }
  hospitals
}