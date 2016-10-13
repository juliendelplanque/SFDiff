initialization
initialize
	super initialize.
	self
		delta: Float infinity;
		epsilon: self defaultEpsilon;
		maximalIterationCount: self defaultMaximalIterationCount.
	iterationCount := 0