setwd("C:\\Users\\USER\\Desktop\\ps\\IT24102835\\IT24102835 Lab 08")

data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)



names(data)<-c("weights")
attach(data)

popmn <- mean(weights)
popsd <- sd(weights)

print(popmn)
print(popsd)



samplesmeans <- c()
samplesds <- c()

for (i in 1:25) {
  s <- sample(weights,6,replace = TRUE)
  samples<-cbind(samplesmeans,samplesds)
  samplesmeans[i] <- mean(s)
  samplesds[i] <- sd(s)
}

s_means <- apply(samples, 2, mean)
s_sds <- apply(samples, 2, sd)

print(head(samplesmeans))
print(head(samplesds))




samplemean <- mean(s_means)
sd_of_s_means <- sd(s_means)

samplemean
sd_of_s_means

theoretical_se <- popsd /25
theoretical_se
