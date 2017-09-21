selecting
candidatesGroupsFrom: matchCandidates do: aBlock
	"Takes a list of #matchCandidates, group them by entity type, sort these groups
	 using the index of their types in #containmentOrder and execute #aBlock with each
	 group formed as parameter."
	((matchCandidates groupedBy: [ :match | (self baseEntityOf: match) class ]) associations
		sorted: [ :a :b | (self containmentOrder indexOf: a head) < (self containmentOrder indexOf: b head) ])
		collect: #tail
		thenDo: aBlock