evaluation
evaluateOn: aFAMIXEntity and: anotherFAMIXEntity
	"Evaluate giving nil as contexte (i.e. when no context is needed)."
	^ self evaluateOn: aFAMIXEntity and: anotherFAMIXEntity inContext: nil