pcg ipg evaluation
pcgIpgDataFor: aModel and: anotherModel named: aString
	| baseGraph targetGraph pcg ipg matches pcg2 ipg2 |
	baseGraph := SFGenericGraphBuilder graphBuiltFromModel: aModel.
	targetGraph := SFGenericGraphBuilder graphBuiltFromModel: anotherModel.
	pcg := baseGraph pairwiseConnectivityGraphWith: targetGraph.
	ipg := pcg asInducedPropagationGraph.
	matches := SFEqualEntitiesFinder new
						baseModel: aModel;
						targetModel: anotherModel;
						findEqualEntities.
	pcg2 := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches.
	ipg2 := pcg2 asInducedPropagationGraph.
	^ { aString . 
	pcg nodes size . pcg edges size .
	ipg nodes size . ipg edges size .
	pcg2 nodes size . pcg2 edges size .
	ipg2 nodes size . ipg2 edges size }