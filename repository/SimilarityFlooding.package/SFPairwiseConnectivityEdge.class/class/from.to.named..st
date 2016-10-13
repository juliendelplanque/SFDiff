instance creation
from: aNode to: anotherNode named: aString
	^ self new
		from: aNode;
		to: anotherNode;
		name: aString;
		yourself