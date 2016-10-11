evaluation
value: aFamixEntity value: anotherFamixEntity value: aContextObject
	|name1 name2 pairs1 pairs2|
	name1 := (self accessor value: aFamixEntity) asLowercase.
	name2 := (self accessor value: anotherFamixEntity) asLowercase.
	(name1 size > 1 or: [ name2 size > 1 ])
		ifFalse: [ ^ name1 = name2 ifTrue: [ 1 ] ifFalse: [ 0 ] ].
	
	pairs1 := ((name1 asArray collectWithIndex: [ :char :i |
						i = name1 size
							ifFalse: [ { char . name1 at: i + 1 } ] ]) reject: #isNil) asSet.
	pairs2 := ((name2 asArray collectWithIndex: [ :char :i |
						i = name2 size
							ifFalse: [ { char . name2 at: i + 1 } ] ]) reject: #isNil) asSet.
	^ ((pairs1 intersection: pairs2) size * 2) / (pairs1 size + pairs2 size)