X <- c(18000,19500,21000,22500,24000)
P <- c(.000024,.00128,.017,.225,.748)

P.sum <- sum(P)

E.X <- weighted.mean(X,P)
E.X

X.Squared <- X^2
E.X.Squared <- weighted.mean(X.Squared, P)
Var.X <- E.X.Squared - E.X^2
Var.X

SD.X <- sqrt(Var.X)
SD.X

1-P.sum