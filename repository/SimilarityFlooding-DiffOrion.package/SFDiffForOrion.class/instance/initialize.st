initialization
initialize
	super initialize.
	self
		equalEntitiesFinder: SFEqualEntitiesFinderForOrion;
		graphBuilder: SFGraphBuilderForOrion;
		associationDiffClass: SFAssociationsDiffForOrion;
		candidateChooserClass: SFBestSigmaChooserForOrion;
		matchThreshold: 0.001