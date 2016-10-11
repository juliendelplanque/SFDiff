tests-evaluation
testEvaluateOnAndInContext
	| result |
	criterion evaluator: [ :entityA :entityB :anObject | entityA name = entityB name ifTrue: [ 1 ] ifFalse: [ 0 ] ].
	
	result := criterion evaluateOn: (FAMIXClass new name: 'A'; yourself) and: (FAMIXClass new name: 'B'; yourself) inContext: nil.
	self assert: result equals: 0.
	
	result := criterion evaluateOn: (FAMIXClass new name: 'A'; yourself) and: (FAMIXClass new name: 'A'; yourself) inContext: nil.
	self assert: result equals: 1.