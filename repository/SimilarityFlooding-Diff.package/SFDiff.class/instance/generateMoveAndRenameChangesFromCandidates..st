diffing
generateMoveAndRenameChangesFromCandidates: matchCandidates
	| groupedByType newMatches|
	groupedByType := matchCandidates groupedBy: [ :match | match baseEntity class ].
	newMatches := Dictionary new.
	groupedByType valuesDo: [ :m |
		|sorted|
		sorted := m sorted: [ :a :b | a > b ].
		[ sorted isNotEmpty and: [ sorted first sigmaValue >= self matchThreshold ] ]
			whileTrue: [ |match|
				match := sorted first.
				sorted := sorted allButFirst reject: [ :each | each baseEntity = match baseEntity or: [ each targetEntity = match targetEntity ] ].
				newMatches := newMatches union: (self retryEqualMatchFor: match baseEntity and: match targetEntity).
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
	newMatches keysAndValuesDo: [ :key :value |
		self changes removeAllSuchThat: [ :change | change baseEntity = key or: [ change targetEntity = value ] ].
		self changes add: (FamixVersionChange new
									baseEntity: key;
									targetEntity: value;
									yourself) ]