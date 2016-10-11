similarity
similarityValueFor: aFAMIXEntity and: anotherFAMIXEntity inContext: aContextObject
	"Returns the similarity value (value betwee 0.0 and 1.0) for the two FAMIX entities given as parameters."
	^ self criteria
		inject: 0
		into: [ :sum :currentCriterion |
			sum + (currentCriterion weight * (currentCriterion evaluateOn: aFAMIXEntity and: anotherFAMIXEntity inContext: aContextObject)) ]