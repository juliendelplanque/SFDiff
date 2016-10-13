testing
mustStop
	^ self delta <= self epsilon or: [ iterationCount >= self maximalIterationCount ]