formula
useFormulaB
	self sigmaValueBlock: [ :node :graph |
		(graph neighbourhoodOf: node)
			inject: 0
			into: [ :sum :currentEdge |
				sum + (graph initialSigmaValueOf: node) + ((graph sigmaValueOf: currentEdge from) * currentEdge weight) ] ].