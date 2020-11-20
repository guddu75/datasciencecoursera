######## CONTROL STRUCTURE OF R ###############

######### IF-ELSE##############

if(x>3){
  y<-10
} else{
  y<-0
}

y <- if(x>3){
  10
}else{
  0
}

###both are same

### FoR LOOPS
for(i in 1:10){
  print(i)
}

x<- c('a','b','c','d')
for(i in 1:4){
  print(x[i])  
}

for(i in seq_along(x)){ # seq_along takes a vector and return a integer sequence of length of vector
  print(x[i])
}

for(letter in x){
  print(letter)
}

for(i in 1:4) print(x[i])

#### WHILE LOOPS

count<-0
while (count<10) {
  print(count)
  count<- count+1
  
}

z<-5
while(z>=3 && z<=10){
  print(z)
  coin<-rbinom(1,1,0.5)
  
  if(coin==1){
    z<-z+1
  }else{
    z<-z-1
  }
  
}


##### REPEAT NEXT BREAK 

# repeat initiates a infinite loop
x0<-1
tol<-1e-8

repeat{
  x1<- computeEstimate()
  
  if(abs(x1-x0)<tol){
    break;
  }else{
    x0<-x1
  }
  
  
}

##next is like continue
for(i in 1:100){
  if(i<=20){
    next
  }
  print(i)
}


################## FUNCTION #####################

add2 <- function(x,y){
  x+y
}


above10<- function(x){
  use <-  x>10
  x[use]
  
}

column_mean <- function(x, removeNA=TRUE){
        nc <- ncol(x)
        means<- numeric(nc)
        for (i in 1:nc){
            means[i]<- mean(x[,i], na.rm = removeNA)
        }
        means
}































