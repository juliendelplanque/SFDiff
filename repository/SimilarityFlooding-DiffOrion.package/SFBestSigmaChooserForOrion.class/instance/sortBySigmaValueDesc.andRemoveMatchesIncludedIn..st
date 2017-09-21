selecting
sortBySigmaValueDesc: matches andRemoveMatchesIncludedIn: newMatches
	"Remove matches included in #newMatches and sort them by sigma value desc."
	^ (matches reject: [ :match | newMatches anySatisfy: [ :any | (self baseEntityOf: any) = (self baseEntityOf: match) ] ])
			sorted: [ :a :b | a sigmaValue >= b sigmaValue ]