comparing
= anObject
	^ self class = anObject class
		and: [ self baseEntity = anObject baseEntity
			and: [ self targetEntity = anObject targetEntity
				and: [ self sigmaValue = anObject sigmaValue ] ] ]