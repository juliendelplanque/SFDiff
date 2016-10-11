tests-evaluation
testEvaluateOnAnd
	| result |
	criterion evaluator: [ :entityA :entityB | entityA name = entityB name ifTrue: [ 1 ] ifFalse: [ 0 ] ].
	
	result := criterion evaluateOn: (FAMIXClass new name: 'A'; yourself) and: (FAMIXClass new name: 'B'; yourself).
	self assert: result equals: 0.
	
	result := criterion evaluateOn: (FAMIXClass new name: 'A'; yourself) and: (FAMIXClass new name: 'A'; yourself).
	self assert: result equals: 1.