instance creation
named: aString withWeight: aFloat evaluator: aComparator
	^ self new
		name: aString;
		weight: aFloat;
		evaluator: aComparator;
		yourself