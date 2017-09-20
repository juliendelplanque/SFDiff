selecting
selectCandidates: matchCandidates
	| groupedByType newMatches containmentOrder |
	groupedByType := matchCandidates
		groupedBy: [ :match | (self baseEntityOf: match) class ].
	newMatches := Set new.
	containmentOrder := {ORNamespace.
	ORPackage.
	ORClass.
	ORMethod.
	ORAttribute.
	ORLocalVariable.
	ORParameter}. "self halt."
	self flag: #todo.	"Let the user configure it."
	(groupedByType associations
		sorted: [ :a :b | (containmentOrder indexOf: a head) < (containmentOrder indexOf: b head) ])
		collect: #tail
		thenDo: [ :m | 
			| sorted |
			sorted := (m
				reject:
					[ :match | newMatches anySatisfy: [ :any | (self baseEntityOf: any) = (self baseEntityOf: match) ] ])
				sorted: [ :a :b | a sigmaValue >= b sigmaValue ].
			[ sorted isNotEmpty and: [ sorted first sigmaValue >= self sfDiff matchThreshold ] ]
				whileTrue: [ | match equalMatches |
					match := sorted first.
					Halt if: [ (self baseEntityOf: match) name = 'A391' ].
					"newMatches inspect.
					self halt."
					sorted := sorted allButFirst
						reject: [ :each | 
							(self baseEntityOf: each) = (self baseEntityOf: match)
								or: [ (self targetEntityOf: each) = (self targetEntityOf: match) ] ].
					equalMatches := self
						retryEqualMatchFor: (self baseEntityOf: match)
						and: (self targetEntityOf: match).
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