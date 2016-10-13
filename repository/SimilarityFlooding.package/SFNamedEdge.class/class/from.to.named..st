instance creation
from: aNode to: anotherNode named: aString
	^ (self from: aNode to: anotherNode)
		name: aString;
		yourself