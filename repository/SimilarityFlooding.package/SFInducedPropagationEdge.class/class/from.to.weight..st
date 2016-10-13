instance creation
from: aNode to: anotherNode weight: aWeight
	^ self new
		from: aNode;
		to: anotherNode;
		weight: aWeight;
		yourself