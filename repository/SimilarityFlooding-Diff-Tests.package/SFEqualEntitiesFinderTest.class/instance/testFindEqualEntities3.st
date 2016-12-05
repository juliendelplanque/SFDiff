tests-finding
testFindEqualEntities3
	| results |
	results := (finder
						modelA: self model1A;
						modelB: self model1C;
						findEqualEntities;
						matchedEntities) associations.

	self
		assert: results size equals: 7;
		assert: (results anySatisfy: [ :any | any head name = 'C1' and: [ any tail name = 'C1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'C2' and: [ any tail name = 'C2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm1' and: [ any tail name = 'm1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm2' and: [ any tail name = 'm2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm3' and: [ any tail name = 'm3' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'att1' and: [ any tail name = 'att1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'arg1' and: [ any tail name = 'arg1' ] ])