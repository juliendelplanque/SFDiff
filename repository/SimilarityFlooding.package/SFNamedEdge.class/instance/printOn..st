printing
printOn: aStream
	self from printOn: aStream.
	aStream << ' -'.
	self name printOn: aStream.
	aStream << '-> '.
	self to printOn: aStream