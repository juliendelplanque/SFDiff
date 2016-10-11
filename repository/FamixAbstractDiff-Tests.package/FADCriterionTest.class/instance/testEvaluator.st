tests-accessing
testEvaluator
	| evaluator |
	self
		should: [ criterion evaluator: Object new ] raise: FADCanNotBeAnEvaluator. "Object does not implement #value:value:"
	
	evaluator := [ :entity :otherEntity | entity name = otherEntity name ifTrue: [ 1 ] ifFalse: [ 0 ] ].
	criterion evaluator: evaluator.
	
	self
		assert: criterion evaluator equals: evaluator