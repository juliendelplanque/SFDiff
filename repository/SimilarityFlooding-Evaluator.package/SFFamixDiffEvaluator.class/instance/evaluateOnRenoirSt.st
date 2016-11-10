evaluation
evaluateOnRenoirSt
	"Evaluate the diff precision on RenoirSt (https://github.com/gcotelli/RenoirSt) v1.6.0 and v2.0.0"
	| diff expectedChanges actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := FamixDiff new
					base: self renoirStV160Model;
					target: self renoirStV200Model;
					diff;
					yourself
	] timeToRun.
	expectedChanges := self renoirStExpectedChanges.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes values select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ SFDiffEvaluationResult new
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself