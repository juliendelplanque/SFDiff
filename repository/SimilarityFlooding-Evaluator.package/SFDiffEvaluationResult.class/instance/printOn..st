printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(.
	self diffName ifNotNil: [ aStream << self diffName ].
	aStream
		<< $:.
	self projectName ifNotNil: [ aStream << self projectName ].
	aStream
		<< $)