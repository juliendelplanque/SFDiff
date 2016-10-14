formula
useFormulaA
	self sigmaValueBlock: [ :node :graph |
		(graph neighbourhoodOf: node)
			inject: (graph initialSigmaValueOf: node)
			into: [ :sum :currentEdge |
				sum + ((graph sigmaValueOf: currentEdge from) * currentEdge weight) ] ].