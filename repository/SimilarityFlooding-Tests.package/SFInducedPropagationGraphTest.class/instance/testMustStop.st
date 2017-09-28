tests-testing
testMustStop
	| ipg |
	ipg := SFInducedPropagationGraph new.
	
	self deny: ipg mustStop.
	
	ipg delta: 0.0001.
	
	self assert: ipg mustStop.
	
	ipg
		delta: 0.1;
		iterationCount: ipg defaultMaximalIterationCount + 1.
	
	self assert: ipg mustStop.
	
	ipg delta: 0.0001.
	
	self assert: ipg mustStop