evaluation
famixDiffEvaluateFor: baseModel and: targetModel with: expectedChanges
	"Evaluate the FamixDiff on base model and target model with the expected changes.
	 Returns a SFDiffEvaluationResult."
	| diff actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := FamixDiff new
					base: baseModel;
					target: targetModel;
					diff;
					yourself
	] timeToRun.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes values select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ self createDiffEvaluationResult
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself