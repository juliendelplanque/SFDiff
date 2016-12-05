tests-finding
testFindEqualEntities4
	| results |
	results := (finder
						modelA: self model1A;
						modelB: self model1D;
						findEqualEntities;
						matchedEntities) associations.

	self
		assert: results size equals: 6;
		assert: (results anySatisfy: [ :any | any head name = 'C1' and: [ any tail name = 'C1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'C2' and: [ any tail name = 'C2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm2' and: [ any tail name = 'm2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'att1' and: [ any tail name = 'att1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'att1' and: [ any tail name = 'att1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'arg1' and: [ any tail name = 'arg1' ] ])