instance creation
from: aNode to: anotherNode named: aString forComposition: aBoolean
	^ (self from: aNode to: anotherNode named: aString)
		isForComposition: aBoolean;
		yourself