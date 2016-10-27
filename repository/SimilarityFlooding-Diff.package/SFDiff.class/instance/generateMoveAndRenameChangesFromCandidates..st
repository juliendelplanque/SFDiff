diffing
generateMoveAndRenameChangesFromCandidates: matchCandidates
	| groupedByType |
	groupedByType := matchCandidates groupedBy: [ :match | match baseEntity class ].

	groupedByType valuesDo: [ :m |
		|sorted|
		sorted := m sorted: [ :a :b | a > b ].
		[ sorted isNotEmpty and: [ sorted first sigmaValue >= self matchThreshold ] ]
			whileTrue: [ |match|
				match := sorted first.
				sorted := sorted allButFirst reject: [ :each | each baseEntity = match baseEntity or: [ each targetEntity = match targetEntity ] ].
				match baseEntity name = match targetEntity name
					ifFalse: [ 
						self changes
							add: (FamixRenameChange new
										baseEntity: match baseEntity; 
										targetEntity: match targetEntity;
										yourself) ].
				(match baseEntity parentEntity isEqualTo: match targetEntity parentEntity)
					ifFalse: [ 
						self changes
							add: (FamixMoveChange new
										baseEntity: match baseEntity;
										targetEntity: match targetEntity;
										yourself) ] ] ].