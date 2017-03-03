diff computation
baseModel: baseModel targetModel: targetModel
	"Computes the difference between the baseModel and the targetModel and returns the changes."
	^ self new
		baseModel: baseModel;
		targetModel: targetModel;
		matchThreshold: 0.1;
		candidateChooserClass: SFBestSigmaChooser;
		computeDiff;
		changes