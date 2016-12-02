comparing
= anotherSFEdge
	^ super = anotherSFEdge and: [ self isForComposition = anotherSFEdge isForComposition and: [ self name = anotherSFEdge name ] ]