initialization
initialize
	super initialize.
	self
		delta: Float infinity;
		epsilon: self defaultEpsilon;
		maximalIterationCount: self defaultMaximalIterationCount;
		useBasicFormula.
	iterationCount := 0.
	neighbourhoodDict := Dictionary new