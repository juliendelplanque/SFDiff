evaluation
famixDiffEvaluateFor: baseModel and: targetModel with: expectedChanges
	"Evaluate the FamixDiff on base model and target model with the expected changes.
	 Returns a SFDiffEvaluationResult."
	| diff actualChanges timeToRun |
	"Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	diff := nil.
	timeToRun := [
		diff := FXDiff runOnBaseModel:  baseModel targetModel: targetModel diffComputer: FamixDiff diffTransformers: #().
	] timeToRun.
	"Only these kind of entities are in the expected changes."
	actualChanges := diff result entityChanges asArray select: [ :change | {FAMIXClass . FAMIXMethod . FAMIXAttribute} includes: change entity class ]. 
	
	^ self createDiffEvaluationResult
			diff: diff;
			expectedChanges: expectedChanges;
			actualChanges: (actualChanges reject: [ :each | each isVersion or: [ each entity isStub ] ]);
			timeToCompute: timeToRun;
			yourself