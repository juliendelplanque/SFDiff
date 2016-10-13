instance creation
from: aNode to: anotherNode weight: aWeight
	^ (self from: aNode to: anotherNode)
		weight: aWeight;
		yourself