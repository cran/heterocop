% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heterocop.R
\name{rho_estim}
\alias{rho_estim}
\title{rho_estim}
\usage{
rho_estim(data, Type, parallel = FALSE)
}
\arguments{
\item{data}{an nxd data frame containing n observations of d variables}

\item{Type}{a vector containing the type of the variables, "C" for continuous and "D" for discrete}

\item{parallel}{a boolean encoding whether the computations should be parallelized}
}
\value{
the dxd estimated correlation matrix of the Gaussian copula
}
\description{
This function enables the user to estimate the correlation matrix of the Gaussian copula for a given dataset
}
\examples{
M <- diag_block_matrix(c(3,4,5),c(0.7,0.8,0.2))
data <- CopulaSim(20,M,c(rep("qnorm(0,1)",6),rep("qexp(0.5)",4),
rep("qbinom(4,0.8)",2)),random=FALSE)[[1]]
rho_estim(data,c(rep("C",10),rep("D",2)))

}
