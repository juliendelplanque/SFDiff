evaluation
evaluateDiffs: selectors
	| results |
	results := Table header: #('Diff' 'Project' 'Time to run' 'Actual changes' 'Expected changes' 'Not detected' 'False positives' 'Precision').
	self class subclasses do: [ :evaluatorClass |
		|evaluator|
		evaluator := evaluatorClass new
							mseDirectory: self mseDirectory;
							yourself.
		selectors do: [ :selector |
			|result|
			result := selector value: evaluator.
			results addRow: { result diffName . (selector copyFrom: 11 to: selector size). result timeToCompute. result actualChanges size . result expectedChanges size . result notDetected size . result falsePositives size . result precision asFloat } ] ].
	^ results