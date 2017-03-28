initialization
initialize
	super initialize.
	self
		changes: OrderedCollection new;
		inducedPropagationGraphFormulaSelector: #useFormulaC;
		candidateChooserClass: SFMatchedChildrenChooser;
		equalEntitiesFinder: SFEqualEntitiesFinderForOrion