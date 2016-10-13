printing
printOn: aStream
	self from printOn: aStream.
	aStream << ' -'.
	self weight printOn: aStream.
	aStream << '-> '.
	self to printOn: aStream