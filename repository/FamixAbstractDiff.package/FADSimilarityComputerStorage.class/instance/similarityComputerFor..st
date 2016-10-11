finding
similarityComputerFor: aFAMIXEntity
	^ self similarityComputers
		detect: [ :simComputer | simComputer acceptEntity: aFAMIXEntity ]
		ifNone: [ FADNoSimilarityComputerDefined signal: ('No similarity computer is defined for a {1}.' format: { aFAMIXEntity className }) ]