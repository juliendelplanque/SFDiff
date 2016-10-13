accessing-computed
nodes
	^ (self edges collect: [ :edge | {edge from . edge to} ]) flattened asSet