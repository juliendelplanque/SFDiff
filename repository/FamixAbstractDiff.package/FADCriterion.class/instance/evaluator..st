accessing
evaluator: anEvaluator
	"An evaluator can be a block or any other object that responds to #value:value: and returns a numeric value between 0.0 and 1.0."
	(anEvaluator respondsTo: #value:value:)
		ifFalse: [ FADCanNotBeAnEvaluator signal ].
	evaluator := anEvaluator