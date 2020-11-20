x<-5 #assigning the value 5 to variable x
print(x) #printing the value of variable x

x<- 1:20 # :operator creates a sequence from 1 to 20 included
print(x)

y<- 20:1 #creates a sequence from 20 to 1 included
print(y)

#most basic object is a vector
#vector contains one type of class
#list can contain elements of multiple class
#we can create a vector by vector() function
#numbers are general treated as double precision real number

#attributes of a object can be accessed by using attributes() function


##########VECTORS AND LIST############# 

#the c() function can be used to create vectors f objects
a<-c(0.5,0.5) #numeric
b<- c(TRUE,FALSE) #logical
c<-c(T,F) #logical
d<- c('a','b','c') #character
e<- c(1+0i,2+4i) #complex

#using the vector() function
x<-vector("numeric",5) #create a vector with 5 zeros
print(x)

##coercion##

y<-c(1.7, 'a') #character
print(y)
y<-c(TRUE,3) #numeric
print(y)
y<-c("a",TRUE) #character
print(y)


##explicit coercion

x<- 0:6
as.numeric(x)
as.logical(x)
as.character(x)

##nonsensical coercion
x<-c('a','b','c')
as.numeric(x)
as.logical(x)
as.complex(x)



##LIST
x<- list(1,'a',TRUE,1+4i)
print(x)


########MATRICES##########

m<- matrix(nrow = 2, ncol = 3)
m

dim(m) #returns dimension of m
attributes(m)

m<- matrix(1:6, nrow = 2, ncol = 3) #column major matrix
m

x<-1:10
dim(x)<- c(2,5)
x

x<-1:3
y<-10:12
cbind(x,y) #binds column major
rbind(x,y) #binds row major wise


######FACTORS########

x<- factor(c('yes','yes','no','yes','no'))
x #two labels
table(x)


unclass(x)

x<-factor(c('yes','no','yes'),labels = c('yes','no'))
x


######### MISSING VALUES ############

# is.na() test for na
# is.nan() test for nan

x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x<- c(1,2,NA,NaN)
is.na(x)
is.nan(x)



########## DATA FRAMES #############


x<- data.frame(foo=1:4 , bar= c(T,F,T,F)) #cretaes a data frame x
x
nrow(x) #returns number of row of x
ncol(x) #returns number of columns of x


##### THE NAMES ATTRIBUTES ######

x<- 1:3
names(x)
names(x) <- c('foo','bar','norf') #associates name with each element of x
x
names(x)  #returns names 

x<- list(a=1,b=2,c=3)
x

m<- matrix(1:6,nrow = 2,ncol = 3)
dimnames(m)<- list(c('a','b'),c('x','y','z')) #for matrix it is dimnames()
m




############### READING TABULAR DATA ##########################

###read.table

data <- read.table('foo.txt') 

##reading large table
# read the help page for read.table

initial<- read.table('foo.txt', nrows = 100) #reads first 100 rows of the data set
classes<- sapply(initial,class) #figure outs which column has which type of object and returns a vector of that
tabAll <- read.table('foo.txt',colClasses = classes) #it optimizes the read.table function


########### TEXTUAL DATA FORMAT ##############

#dump() && dput()

y<- data.frame(a=1,b='a')
dput(y)
dput(y,file = 'y.R') #creates a file y.R and write the information
new.y<-dget('y.R') # get the information from y.R and store it in new.y
new.y

##dumping R objects
x<- "foo"
y<- data.frame(a=1,b='a')
dump(c('x','y'),file= 'data.R')
rm(x,y)
source('data.R')
y

#### interfaces to the out world ###

# file opens a connection to a file
# url opens a connection to a url
# gzfile opens a connection to a file compressed with gzip

con<- file('foo.txt','r') #reading mode
data<- read.csv(con)
close(con)

con<-gzfile('worrds.gz')
z<- readLines(con,10) #reads first 10 lines of the file


con<- url('https://codeforces.com/','r')
x<- readLines(con)
x


###### SBSETTING R OBJECTS #####

# [] always return an object of same class of original class
# [[]] extract data from data frame and list
# $ extract data from list or data frame by name


x <- c("a","b","c","d","e")
x[1]  # returns the first element
x[2] #returns a character vector of one element
x[1:4]  # returns a sequence 
x[x>"a"] #returns a character vector of elements which are greater than a

u<- (x>'a')  #create a logical vector u 
u
x[u]

## Subsetting a list

x<- list(foo =1:4, bar=0.6)
x[1]  #returns list containing the sequence foo
x[[1]] # returns the sequence foo 
x$bar  #returns the element that is associated with the name bar
x[['bar']] #returns the value of bar
x['bar'] #returns a list




























































