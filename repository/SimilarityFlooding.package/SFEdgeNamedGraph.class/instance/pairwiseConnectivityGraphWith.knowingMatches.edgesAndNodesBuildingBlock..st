pairwise connectivity graph
pairwiseConnectivityGraphWith: anotherSFEdgeNamedGraph knowingMatches: matchesDict edgesAndNodesBuildingBlock: buildingBlock
	| graph pcgEdges pcgNodes incoherentNodes |
	graph := SFPairwiseConnectivityGraph new.
	"Build edges and nodes for the PCG."
	pcgNodes := Set new.
	pcgEdges := OrderedCollection new.
	buildingBlock value: self value: anotherSFEdgeNamedGraph value: pcgEdges value: pcgNodes. 
	"Prune useless nodes and edges because of the #matchesDict."
	incoherentNodes := Set new.
	pcgEdges := self pruneEdges: pcgEdges accordingTo: matchesDict andPutIncoherentNodesIn: incoherentNodes.
	^ graph
		addAllEdges: pcgEdges;
		nodes: pcgNodes \ incoherentNodes;
		yourself