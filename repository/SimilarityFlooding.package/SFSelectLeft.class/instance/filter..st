filtering
filter: matchCandidates
	| matchCandidatesDict result entitiesOfBaseModel |
	entitiesOfBaseModel := (matchCandidates collect: #baseEntity) asSet.
	matchCandidatesDict := self matchCandidatesDictionaryFor: entitiesOfBaseModel from: matchCandidates.
	self makeSigmaRelative: matchCandidatesDict.
	result := OrderedCollection new.
	matchCandidatesDict keysAndValuesDo: [ :entity :possibleMatches |
		|max|
		max := possibleMatches maxFor: #second.
		result add: { entity . max first . max second } ].
	^ result