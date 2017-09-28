comparing
= anotherSFEdge
	^ self class = anotherSFEdge class
		and: [ self from = anotherSFEdge from
			and: [ self to = anotherSFEdge to
				and: [ self isForComposition = anotherSFEdge isForComposition
					and: [ self name = anotherSFEdge name
						and: [ self fromToWeight = anotherSFEdge fromToWeight
							and: [ self toFromWeight = anotherSFEdge toFromWeight ] ] ] ] ] ]