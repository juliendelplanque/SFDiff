evaluation
evaluateOnLibnotifyBinding
	"Evaluate the diff precision on RenoirSt (https://github.com/juliendelplanque/LibnotifyBinding) '22c41b0e954a9215459c69af67c7242255a8362d' and '84dfc7de06a2c3acb932b1a812c33553ff812297'."
	| diff expectedChanges actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := FamixDiff new
					base: self libnotifyBindingCommit1Model;
					target: self libnotifyBindingCommit2Model;
					diff;
					yourself
	] timeToRun.
	expectedChanges := self libnotifyBindingExpectedChanges.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes values select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ SFDiffEvaluationResult new
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself