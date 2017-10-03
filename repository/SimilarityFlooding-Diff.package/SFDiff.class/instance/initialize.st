initialization
initialize
	super initialize.
	self
		inducedPropagationGraphFormulaSelector: #useFormulaC;
		candidateChooserClass: SFMatchedChildrenChooser;
		equalEntitiesFinder: SFEqualEntitiesFinder;
		graphBuilder: SFGenericGraphBuilder