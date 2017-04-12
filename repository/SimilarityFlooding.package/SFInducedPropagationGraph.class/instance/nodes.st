accessing-computed
nodes
	"Lazy init of nodes to avoid recomputing the set of nodes at each iteration of SF."
	^ nodes ifNil: [ nodes := super nodes ]