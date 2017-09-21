selecting
selectCandidates: matchCandidates
	| groupedByType newMatches |
	self halt: 'This method is broken and should be fixed one day...'.
	groupedByType := matchCandidates groupedBy: [ :match | (self baseEntityOf: match) class ].
	newMatches := Set new.
	(groupedByType associations sorted: [ :a :b | (self containmentOrder indexOf: a head) < (self containmentOrder indexOf: b head) ])
		collect: #tail
		thenDo: [ :m | 
			| sorted |
			sorted := (m reject: [ :match | newMatches anySatisfy: [ :any | (self baseEntityOf: any) = (self baseEntityOf: match) ] ])
				sorted: [ :a :b | a sigmaValue >= b sigmaValue ].
			[ sorted isNotEmpty and: [ sorted first sigmaValue >= self sfDiff matchThreshold ] ]
				whileTrue: [ | match equalMatches |
					match := sorted first.
					"newMatches inspect.
					self halt."
					sorted := sorted allButFirst
						reject: [ :each | (self baseEntityOf: each) = (self baseEntityOf: match) or: [ (self targetEntityOf: each) = (self targetEntityOf: match) ] ].
					equalMatches := self retryEqualMatchFor: (self baseEntityOf: match) and: (self targetEntityOf: match).
					"equalMatches do: [ :em |
						(newMatches anySatisfy: [ :any | (self baseEntityOf: any) = (self baseEntityOf: em) ]) ifFalse: [ newMatches add: em ] ]."
					newMatches addAll: equalMatches.
					(self canGenerateMoveFrom: match knowingNewMatches: newMatches)
						ifTrue: [ newMatches
								add:
									(FamixMoveChange new
										baseEntity: (self baseEntityOf: match);
										targetEntity: (self targetEntityOf: match);
										yourself) ].
					(self canGenerateRenameFrom: match knowingNewMatches: newMatches)
						ifTrue:
							[ "((self canGenerateMoveFrom: match knowingNewMatches: newMatches) or: [ (self canGenerateRenameFrom: match knowingNewMatches: newMatches) ])
						ifFalse: [ match inspect. self halt  ]"
							"Should never happen! If it does, something is wrong."
							newMatches
								add:
									(FamixRenameChange new
										baseEntity: (self baseEntityOf: match);
										targetEntity: (self targetEntityOf: match);
										yourself) ] ] ].
	^ newMatches