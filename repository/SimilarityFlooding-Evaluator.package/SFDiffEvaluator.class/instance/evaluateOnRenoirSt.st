evaluation
evaluateOnRenoirSt
	"Evaluate the diff precision on RenoirSt (https://github.com/gcotelli/RenoirSt) v1.6.0 and v2.0.0"
	| diff expectedChanges actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := SFDiff new
					baseModel: self renoirStV160Model;
					targetModel: self renoirStV200Model;
					matchThreshold: 0.001;
					computeDiff;
					yourself
	] timeToRun.
	expectedChanges := self renoirStExpectedChanges.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ SFDiffEvaluationResult new
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself