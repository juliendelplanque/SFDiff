accessing-computed
matchCandidates
	"Returns the list of match candidates."
	^ Array streamContents: [ :stream |
		self sigmaValues associationsDo: [ :association |
			stream << (association head
							sigmaValue: association tail;
							yourself) ] ]