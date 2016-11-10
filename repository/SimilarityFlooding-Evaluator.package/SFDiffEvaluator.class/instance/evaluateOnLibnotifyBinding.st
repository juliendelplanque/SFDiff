evaluation
evaluateOnLibnotifyBinding
	"Evaluate the diff precision on RenoirSt (https://github.com/juliendelplanque/LibnotifyBinding) '22c41b0e954a9215459c69af67c7242255a8362d' and '84dfc7de06a2c3acb932b1a812c33553ff812297'."
	| diff expectedChanges actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := SFDiff new
					baseModel: self libnotifyBindingCommit1Model;
					targetModel: self libnotifyBindingCommit2Model;
					matchThreshold: 0.001;
					computeDiff;
					yourself
	] timeToRun.
	expectedChanges := self libnotifyBindingExpectedChanges.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ SFDiffEvaluationResult new
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself