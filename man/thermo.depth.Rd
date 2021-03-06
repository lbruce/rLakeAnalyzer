\name{thermo.depth}
\alias{thermo.depth}

\title{
Calculate depth of the thermocline from a temperature profile.
}
\description{
This function calculates the location of the thermocline from a temperature profile. 
It uses a special technique to estimate where the thermocline lies even between two temperature measurement depths, 
giving a potentially finer-scale estimate than usual techniques.
}
\usage{
thermo.depth(wtr, depths, Smin = 0.1, seasonal=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
	\item{wtr}{
		Numeric vector of water temperature in degrees Celsius
	}
	\item{depths}{
		Numeric vector of depths. Must be the same length as the wtr parameter
	}
	\item{Smin}{
		Optional paramter defining minimum density gradient for thermocline
	}
  \item{seasonal}{
		a logical value indicating whether the seasonal thermocline should be returned. The seasonal thermocline 
		is defined as the deepest density gradient found in the profile. If FALSE, the depth of the maximum density gradient is returned.
	}
}

\value{
Depth of thermocline. If no thermocline found, value is max(depths).
}

\author{
Luke Winslow
}

\seealso{
\code{water.density}
}
\examples{

	# A vector of water temperatures
	wtr = c(22.51, 22.42, 22.4, 22.4, 22.4, 22.36, 22.3, 22.21, 22.11, 21.23, 16.42, 
		15.15, 14.24, 13.35, 10.94, 10.43, 10.36, 9.94, 9.45, 9.1, 8.91, 8.58, 8.43)

	#A vector defining the depths
	depths = c(0, 0.5, 1, 1.5, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 
		17, 18, 19, 20)

	t.d = thermo.depth(wtr, depths, seasonal=FALSE)
	
	cat('The thermocline depth is:', t.d)

}

\keyword{manip}

