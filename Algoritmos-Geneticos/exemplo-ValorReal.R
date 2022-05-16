#install.packages("GA", dependencies = TRUE)
library(GA)

f <- function(x){
  equacao = 2 * x + 5
  
  if (equacao > 20){
    return(20 - equacao)
  } else {
    return(equacao - 20)
  }
}

resultado = ga("real-value", fitness = f, lower = c(-20), upper = c(20), popSize = 10,
               maxiter = 20, monitor = T, names = c("a"))

summary(resultado)$solution
plot(resultado)