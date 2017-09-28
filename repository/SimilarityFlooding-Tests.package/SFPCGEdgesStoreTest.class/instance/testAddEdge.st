tests-adding
testAddEdge
	| edge |
	edge := SFEdge from: 'a' to: 'b' named: 'test_edge'.
	store
		addEdge: edge.
		
	self
		assert: (store nodeToEdgesDict at: 'a') size equals: 1;
		assert: ((store nodeToEdgesDict at: 'a') at: 'test_edge') first equals: edge