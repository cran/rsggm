\name{out}
\alias{out}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
out (Output parameters for specific gamma and lambda)
}
\description{
Output parameters for specific gamma and lambda
}
\usage{

out(object, gamma, lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
An object made by \code{rsggm} function.
}
  \item{gamma}{
A value of gamma. 
}
  \item{lambda}{
A value of lambda.
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
Hirose, K. and Fujisawa, H. (2015). 
\emph{Robust sparse Gaussian graphical modeling, submitted},\cr
Fujisawa, H., and Eguchi, S. (2008). 
\emph{Robust parameter estimation with a small bias against heavy contamination, Journal of Multivariate Analysis, 99(9), 2053-2081.}
  \url{http://www.sciencedirect.com/science/article/pii/S0047259X08000456}\cr
}
\author{
Kei Hirose\cr
\email{mail@keihirose.com}
}

%\note{
%  ~~further notes~~
%}

% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{rsggm} object}}
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
