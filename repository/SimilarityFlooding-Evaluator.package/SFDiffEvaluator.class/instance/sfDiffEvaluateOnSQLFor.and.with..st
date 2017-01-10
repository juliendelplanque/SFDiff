evaluation
sfDiffEvaluateOnSQLFor: baseModel and: targetModel with: expectedChanges
	"Evaluate the SF diff on base model and target model with the expected changes.
	 Returns a SFDiffEvaluationResult."
	| diff timeToRun |
	diff := nil. "Avoid warning: 'Temporaries readbefore written', this is done deliberately."
	timeToRun := [
		diff := SFDiff new
					baseModel: baseModel;
					targetModel: targetModel;
					matchThreshold: 0.01;
					candidateChooserClass: SFBestSigmaChooser;
					computeDiff;
					yourself
	] timeToRun.
	
	^ self createDiffEvaluationResult
			diff: diff; 
			expectedChanges: expectedChanges;
			actualChanges: (diff changes reject: #isVersion);
			timeToCompute: timeToRun;
			yourself