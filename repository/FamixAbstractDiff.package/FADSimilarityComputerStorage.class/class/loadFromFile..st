loading
loadFromFile: aFileReference
	| loaded |
	loaded := FLMaterializer materializeFromFileNamed: aFileReference fullName.
	(loaded isKindOf: self)
		ifFalse: [ self error: 'The file loaded does not contain a similarity computer storage.' ].
	^ loaded