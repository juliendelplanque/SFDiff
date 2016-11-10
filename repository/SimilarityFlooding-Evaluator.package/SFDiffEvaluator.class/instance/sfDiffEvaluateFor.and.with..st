evaluation
sfDiffEvaluateFor: baseModel and: targetModel with: expectedChanges
	"Evaluate the SF diff on base model and target model with the expected changes.
	 Returns a SFDiffEvaluationResult."
	| diff actualChanges timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := SFDiff new
					baseModel: baseModel;
					targetModel: targetModel;
					matchThreshold: 0.001;
					computeDiff;
					yourself
	] timeToRun.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff changes select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ self createDiffEvaluationResult
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: #isVersion);
			timeToCompute: timeToRun;
			yourself