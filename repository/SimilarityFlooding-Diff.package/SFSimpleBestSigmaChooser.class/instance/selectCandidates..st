selecting
selectCandidates: matchCandidates
	| groupedByType newMatches |
	groupedByType := matchCandidates groupedBy: [ :match | match baseEntity class ].
	newMatches := OrderedCollection new.
	(groupedByType associations sorted: [ :a :b | a head asString < b head asString ])
		collect: #tail
		thenDo: [ :m | 
			| sorted |
			sorted := m sorted: [ :a :b | a sigmaValue >= b sigmaValue ].
			[ sorted isNotEmpty and: [ sorted first sigmaValue >= self sfDiff matchThreshold ] ]
				whileTrue: [ | match |
					match := sorted first.
					sorted := sorted allButFirst reject: [ :each | each baseEntity = match baseEntity or: [ each targetEntity = match targetEntity ] ].
					(self canGenerateMoveFrom: match)
						ifTrue: [ 
							newMatches add: (FamixMoveChange new
													baseEntity: match baseEntity;
													targetEntity: match targetEntity;
													yourself) ].
					(self canGenerateRenameFrom: match)
						ifTrue: [ 
							newMatches add: (FamixRenameChange new
													baseEntity: match baseEntity;
													targetEntity: match targetEntity;
													yourself) ].
					((self canGenerateMoveFrom: match) and: [ self canGenerateRenameFrom: match ])
						ifFalse: [ 
							newMatches add: (FamixVersionChange new
													baseEntity: match baseEntity;
													targetEntity: match targetEntity;
													yourself) ] ] ].
	^ newMatches