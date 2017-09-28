tests-accessing
testEdgesOf
	| e1 e2 e3 e4 e5 |
	e1 := SFEdge from: 'a' to: 'b' named: 'test_edge1'.
	e2 := SFEdge from: 'a' to: 'c' named: 'test_edge2'.
	e3 := SFEdge from: 'd' to: 'e' named: 'test_edge1'.
	e4 := SFEdge from: 'd' to: 'a' named: 'test_edge1'.
	e5 := SFEdge from: 'd' to: 'b' named: 'test_edge2'.
	store
		addEdge: e1;
		addEdge: e2;
		addEdge: e3;
		addEdge: e4;
		addEdge: e5.
		
	self
		assertCollection: (store edgesOf: 'a') hasSameElements: { e1 . e2 };
		assertCollection: (store edgesOf: 'd') hasSameElements: { e3 . e4 . e5 }