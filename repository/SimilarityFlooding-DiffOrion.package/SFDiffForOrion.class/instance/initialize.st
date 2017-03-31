initialization
initialize
	super initialize.
	self
		equalEntitiesFinder: SFEqualEntitiesFinderForOrion;
		graphBuilder: SFGraphBuilderForOrion;
		associationDiffClass: SFAssociationsDiffForOrion;
		matchThreshold: 0.1