selecting
selectCandidates: matchCandidates
	| groupedByType newMatches |
	groupedByType := matchCandidates groupedBy: [ :match | (self baseEntityOf: match) class ].
	newMatches := OrderedCollection new.
	(groupedByType associations sorted: [ :a :b | a head asString < b head asString ])
		collect: #tail
		thenDo: [ :m | 
			| sorted |
			sorted := m sorted: [ :a :b | a sigmaValue >= b sigmaValue ].
			[ sorted isNotEmpty and: [ sorted first sigmaValue >= self sfDiff matchThreshold ] ]
				whileTrue: [ | match |
					match := sorted first.
					sorted := sorted allButFirst reject: [ :each | (self baseEntityOf: each) = (self baseEntityOf: match) or: [ (self targetEntityOf: each) = (self targetEntityOf: match) ] ].
					newMatches := newMatches union: (self retryEqualMatchFor: (self baseEntityOf: match) and: (self targetEntityOf: match)).
					(self canGenerateMoveFrom: match)
						ifTrue: [ 
							newMatches add: (FamixMoveChange new
													baseEntity: (self baseEntityOf: match);
													targetEntity: (self targetEntityOf: match);
													yourself) ].
					(self canGenerateRenameFrom: match)
						ifTrue: [ 
							newMatches add: (FamixRenameChange new
													baseEntity: (self baseEntityOf: match);
													targetEntity: (self targetEntityOf: match);
													yourself) ] ] ].
	^ newMatches