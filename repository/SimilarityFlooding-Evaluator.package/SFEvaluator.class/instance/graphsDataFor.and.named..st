graphs evaluation
graphsDataFor: aModel and: anotherModel named: aString
	| baseGraph targetGraph |
	baseGraph := SFGenericGraphBuilder graphBuiltFromModel: aModel.
	targetGraph := SFGenericGraphBuilder graphBuiltFromModel: anotherModel.
	^ { aString . baseGraph nodes size . baseGraph edges size . targetGraph nodes size . targetGraph edges size }