joining
joinModel: aMooseModel withModel: anotherMooseModel initialSigmaValueBlock: aBlock
	| visitor1 visitor2 |
	'Build graph from models: ' logCr.
	[visitor1 := SFGraphBuilder new.
	visitor1 buildFromModel: aMooseModel.
	visitor2 := SFGraphBuilder new.
	visitor2 buildFromModel: anotherMooseModel.] timeToRun logCr.
	'Edge count for Graph 1: ' logCr.
	visitor1 graph edges size logCr.
	'Edge count for Graph 2: ' logCr.
	visitor2 graph edges size logCr.

	^ self joinGraph: visitor1 graph withGraph: visitor1 graph initialSigmaValueBlock: aBlock