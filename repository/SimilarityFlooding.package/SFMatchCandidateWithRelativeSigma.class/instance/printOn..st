printing
printOn: aStream
	self class printOn: aStream.
	aStream << $(.
	baseEntity printOn: aStream.
	aStream << $,.
	targetEntity printOn: aStream.
	aStream << ' -> sigma='.
	sigmaValue printOn: aStream.
	aStream << ', relative='.
	relativeSigmaValue printOn: aStream.
	aStream << $)