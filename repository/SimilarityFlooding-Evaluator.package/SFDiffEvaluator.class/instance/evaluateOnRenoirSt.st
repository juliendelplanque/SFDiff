evaluation
evaluateOnRenoirSt
	"Evaluate the diff precision on RenoirSt (https://github.com/gcotelli/RenoirSt) v1.6.0 and v2.0.0"
	^ self sfDiffEvaluateFor: self renoirStV160Model and: self renoirStV200Model with: self renoirStExpectedChanges