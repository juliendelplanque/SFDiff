adding
add: aFADSimilarityComputer
	"Add a similarity computer to the set of similarity computers. If one in the set is equal to the one given as parameter, it is remplaced in the set.
	 See FADSimilarityComputer class comment to kinow more about when there is equality."
	(aFADSimilarityComputer isKindOf: FADSimilarityComputer)
		ifFalse: [ self error: 'Can only add objects that are kind of FADSimilarityComputer.' ].
	self similarityComputers add: aFADSimilarityComputer