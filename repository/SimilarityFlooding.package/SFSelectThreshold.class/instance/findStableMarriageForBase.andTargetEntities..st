filtering
findStableMarriageForBase: baseProposals andTargetEntities: targetProposals
	| marriages man|
	marriages := OrderedCollection new.
	[ (man := baseProposals keys
					detect: [ :m |
						(marriages noneSatisfy: [ :array | array first = m ]) "Not married."
							and: [ (baseProposals at: m) isNotEmpty ] ] "Still have at least one woman to propose."
					ifNone: [ nil ]) isNotNil ] whileTrue: [ 
	|woman|
	woman := (baseProposals at: man) removeFirst first.
	(marriages anySatisfy: [ :m | m second = woman ])
		ifFalse: [ marriages add: { man . woman } ] "Woman is free, man and woman become engaged."
		ifTrue: [ |actual sigActual sigMan| "Woman already married."
			actual := (marriages detect: [ :m | m second = woman ]) first. "Actual man."
			sigActual := ((targetProposals at: woman) detect: [ :m | m first = actual ]) second.
			sigMan := ((targetProposals at: woman) detect: [ :m | m first = man ]) second.
			sigMan > sigActual
				ifTrue: [ 
					marriages removeAllSuchThat: [ :m | m first = actual ].
					marriages add: { man . woman } ] ] ].
	^ marriages