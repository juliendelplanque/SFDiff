formula
useFormulaC
	self sigmaValueBlock: [ :node :graph |
		(graph neighbourhoodOf: node)
			inject: (graph initialSigmaValueOf: node) + (graph sigmaValueOf: node)
			into: [ :sum :currentEdge |
				sum + (graph initialSigmaValueOf: node) + ((graph sigmaValueOf: currentEdge from) * currentEdge weight) ] ].