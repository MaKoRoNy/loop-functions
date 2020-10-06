#Loop functions
#lapply loop over a list and evaluste the function on each element
#sapply same as lapply, but try to simplify the result
#apply apply a function over the margins of an array
#tapply apply a function over solutions of a vector
#mapply multivariate version of lapply

# #lapply always return a list
#sapply return more simplified df for result
# x<-list(a=1:5, b=rnorm(10))
# lapply(x,mean)
# y<-list(a=1:4,b=rnorm(10),c=rnorm(20,1),d=rnorm(10,2,4))
# lapply(y,mean)
# z<-1:4
# lapply(z,runif)
# lapply(z,runif,min=0,max=100)
# x<-list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
# lapply(x, function(elt) elt[,1])
# sapply(x, function(elt) elt[,1])
# x<-list(a=1:8,b=rnorm(9))
# class(sapply(x,mean))

#apply 
# x<- matrix(rnorm(200),20,10)
# apply(x,1,mean) # 1 means rows
# apply(x,2,sum) # 2 means columns
#rowSums = apply(x,1,sum)
#rowMeans = apply(x,1,mean)
#colSums = apply(x,2,sum)
#colMean = apply(x,2, mean)


# x<-matrix(rnorm(200),20,10)
# r<-apply(x,1,quantile, prob = c(0.25,0.75))
# dim(r)

# a<-array(rnorm(40),c(2,2,10))
# apply(a,c(1,3),mean)
# rowMeans(a, dims=2)
# dim(a)

#mapply is a multivariate apply of sorts which applies a function in parallel
#over a set of arguments
# mapply(rep,1:4,4:1)
# mapply(rnorm,1:4,1:4,2)

# tapply is used to apply a function over subsets of a vector
# x<-c(rnorm(10),runif(10),rnorm(10))
# f <- gl(3,10)
# f
# x
# tapply(x, f, mean) # return the vector
# tapply(x,f,mean, simplify = FALSE) #return list
# tapply(x,f,range)

#split #takes a vector or other objects and splits it into groups determined 
# by a factor or list of factors
# x <- c(rnorm(10), runif(10), rnorm(10))
# f<- gl(3,10)
# split(x,f)
# lapply(split(x,f),mean)

# x<-rnorm(10)
# f1<-gl(2,5)
# f2<-gl(5,2)
# interaction(f1,f2)
# split(x,list(f1,f2), drop=TRUE)

#Debugging tools
#traceback #prints out the function call stack after an error occurs
#debug #flags a function for debug
#browser #suspends the execution of a function whenever it's called
# and put the function in debug mode
# trace allows you to insert debugging code into a funtion a specific place
# recover # allows ou to modify the error behavior 
