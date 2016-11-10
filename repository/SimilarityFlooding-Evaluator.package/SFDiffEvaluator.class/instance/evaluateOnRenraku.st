evaluation
evaluateOnRenraku
	"Evaluate the diff precision on Renraku (https://github.com/Uko/Renraku) v0.10.0 and v0.11.0"
	^ self sfDiffEvaluateFor: self renrakuV0100Model and: self renrakuV0110Model with: self renrakuExpectedChanges