printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(.
	self diffName ifNotNil: [ self diffName printOn: aStream ].
	aStream
		<< $)