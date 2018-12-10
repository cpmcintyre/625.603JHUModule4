
event_1 <- 0
invcdf <- function(y) sqrt(y)
for (i in 1:1000){
  res<-sort(invcdf(runif(5)))
  if (res[1] < .6){
    if (res[5]>.6){
      event_1=event_1+1
    }
    else{
      warning("5th not greater than .6")
    }
  }
  else{
    warning("1st not less than .6")
  }
}
  

event_2 <- 0
invcdf_two <- function(y) -log((1 - y))

for (i in 1:1000){
  res_one <- sort(invcdf_two(runif(12)))[1]
  if (res_one < .2){
    event_2 = event_2 + 1
  }
}
