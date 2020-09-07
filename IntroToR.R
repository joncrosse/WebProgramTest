# import the prob library
library(prob)

# simulate rolling 3 dice
Roll <- rolldie(3, makespace = T)

# Let A be the event where the first two die equal each other
A <- subset(Roll, X1 == X2)

# get the complement of A
A.comp <- setdiff(Roll, A)

# Let B be the event where none of the die equal each other
B <- subset(Roll, X1 != X2 & X1 != X3 & X2 != X3)

# get the complement of B
B.comp <- setdiff(Roll, B)

# let C be the event where the first two dice added together are
# less than the third die.
C <- subset(Roll, X1 + X2 < X3)

# get the complement of C
C.comp <- setdiff(Roll, C)

# get the union of A and C
AUC <- union(A,C)

# get the intersection of A' and C'
AIC.comp <- intersect(A.comp, C.comp)

# get the union of A and B
AUB <- union(A,B)

#2a
Prob(A)

#2b
Prob(B)

#2c
Prob(C)

#2d
Prob(AUC)

#2e
Prob(AIC.comp)

#2f
Prob(A, given = C)

#3
#get the probability of the union of A and B
Prob(AUB)



