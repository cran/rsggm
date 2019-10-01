\name{rsggm}
\alias{rsggm}
\alias{rsggm.generator}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
rsggm (Robust Sparse Gaussian Graphical Modeling via the Gamma-Divergence)
}
\description{
Robust estimation of sparse inverse covariance matrix via the gamma-divergence
}
\usage{

rsggm(x, gamma, lambda, nlambda = 10, delta = 0.2, penalty.offdiag = FALSE, 
        method = "glasso", maxit = 100, tol.plogL = 1e-8, msg = TRUE, 
        Omega.init, mu.init)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A data matrix.
}
  \item{gamma}{
(non-negative) A numeric vector of tuning parameters for the gamma-divergence. 
}
  \item{lambda}{
(Optional) A matrix of tuning parameters for the lasso.  Each column corresponds to \code{gamma}, so that the number of column must be equal to the length of gamma.
}
  \item{nlambda}{
The length of lambda if \code{lambda} is not specified.  Default is 10
}
  \item{delta}{
The ratio of maximum value of lambda and the minimum value of lambda if \code{lambda} is not specified.  Default is 0.2.
}
  \item{penalty.offdiag}{
If \code{FALSE}, the diagonal elements of inverse covariance are not penalized.  Dafault is \code{FALSE}.
}
  \item{method}{
Estimation method of the graphical lasso. Default is \code{glasso}.  It can be \code{QUIC}.
}
  \item{maxit}{
The maximum number of iteration.
}
  \item{tol.plogL}{
Tolerance of the maximum value of penalized likelihood estimation.
}
  \item{msg}{
If \code{TRUE}, a messege is shown.
}
  \item{Omega.init}{
(Optional) The initial value of the inverse covariance matrix.
}
  \item{mu.init}{
(Optional) The initial value of the mean vector.
}
}
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
\value{
\item{Omega}{inverse covariance matrix}
\item{mu}{mean vector}
\item{weight}{weight obtained by the gamma-lasso algorithm}
\item{nedges}{number of edges}
\item{lambda}{lambda}
\item{gamma}{gamma}
}

\references{
%% ~put references to the literature/web site here ~
Hirose, K. and Fujisawa, H. (2017). 
\emph{Robust sparse Gaussian graphical modeling, Journal of Multivariate Analysis, 161, 172-190.}\cr
%  \url{https://www.sciencedirect.com/science/article/pii/S0047259X17302488}\cr
Fujisawa, H., and Eguchi, S. (2008). 
\emph{Robust parameter estimation with a small bias against heavy contamination, Journal of Multivariate Analysis, 99(9), 2053-2081.}
%  \url{http://www.sciencedirect.com/science/article/pii/S0047259X08000456}\cr
}
\author{
Kei Hirose\cr
\email{mail@keihirose.com}
}

%\note{
%  ~~further notes~~
%}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{out}} object}
\examples{
#generate data
set.seed(1234)
x <- rsggm.generator(N=200,p=20)

#fit the robust sparse Gaussian graphical modeling
fit <- rsggm(x,gamma=c(0.05,0.1),delta=0.2)

#output the result for specitic gamma and lambda
out(fit,gamma=0.05,lambda=0.2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
