diff computation
baseModel: baseModel targetModel: targetModel associationDiffClass: aClass
	"Same as #baseModel:targetModel: but with the possibility to set the class that do the association difference."

	^ self new
		baseModel: baseModel;
		targetModel: targetModel;
		matchThreshold: 0.01;
		candidateChooserClass: SFBestSigmaChooser;
		associationDiffClass: aClass;
		computeDiff;
		changes