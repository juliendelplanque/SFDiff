evaluation
evaluateDiffs: selectors
	| results |
	results := OrderedCollection new.
	self class subclasses
		do: [ :evaluatorClass | 
			| evaluator |
			evaluator := evaluatorClass new
				mseDirectory: self mseDirectory;
				yourself.
			selectors
				do: [ :selector | 
					| result |
					result := selector value: evaluator.
					result projectName: (selector copyFrom: 11 to: selector size).
					results add: result ] ].
	^ results