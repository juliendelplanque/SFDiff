similarity
is: aFAMIXEntity similarTo: anotherFAMIXEntity inContext: aContextObject
	"Returns true if the two FAMIX entities given as parameters are similar, else returns false."
	^ aFAMIXEntity class = self entityAccepted
		and: [ anotherFAMIXEntity class = self entityAccepted
			and: [ (self similarityValueFor: aFAMIXEntity and: anotherFAMIXEntity inContext: aContextObject) >= self threshold ] ]