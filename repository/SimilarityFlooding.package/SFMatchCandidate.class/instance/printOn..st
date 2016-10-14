printing
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	baseEntity printOn: aStream.
	aStream << $,.
	targetEntity printOn: aStream.
	aStream << ' -> '.
	sigmaValue printOn: aStream.
	aStream << $)