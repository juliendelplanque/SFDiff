evaluation
evaluateDiffs: selectors
	| results |
	results := SFDiffEvaluationResultSet new.
	self class subclasses
		do: [ :evaluatorClass | 
			selectors
				do: [ :selector | 
					| result evaluator |
					evaluator := evaluatorClass new
						mseDirectory: self mseDirectory;
						yourself.
					result := selector value: evaluator.
					result projectName: (selector copyFrom: 11 to: selector size).
					results add: result ] ].
	^ results