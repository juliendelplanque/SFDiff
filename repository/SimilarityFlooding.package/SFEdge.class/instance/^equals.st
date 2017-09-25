comparing
= anotherSFEdge
	^ self from = anotherSFEdge from
		and: [ self to = anotherSFEdge to
			and: [ self isForComposition = anotherSFEdge isForComposition
				and: [ self name = anotherSFEdge name
					and: [ self weight = anotherSFEdge weight ] ] ] ]