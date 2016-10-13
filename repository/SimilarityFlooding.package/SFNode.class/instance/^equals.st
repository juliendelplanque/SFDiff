comparing
= anotherNode
	^ self class = anotherNode class and: [ self baseEntity = anotherNode baseEntity and: [ self targetEntity = anotherNode targetEntity ] ]