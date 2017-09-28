accessing-computed
nodes
	^ self edges
		inject: Set new
		into: [ :set :edge |
			set
				add: edge from;
				add: edge to;
				yourself ]