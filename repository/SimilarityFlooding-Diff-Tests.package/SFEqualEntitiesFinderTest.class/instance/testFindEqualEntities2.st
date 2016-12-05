tests-finding
testFindEqualEntities2
	| results |
	results := (finder
						baseModel: self model1A;
						targetModel: self model1B;
						findEqualEntities;
						matchedEntities) associations.

	self
		assert: results size equals: 5;
		assert: (results anySatisfy: [ :any | any head name = 'C1' and: [ any tail name = 'C1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'C2' and: [ any tail name = 'C2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm1' and: [ any tail name = 'm1' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'm2' and: [ any tail name = 'm2' ] ]);
		assert: (results anySatisfy: [ :any | any head name = 'att1' and: [ any tail name = 'att1' ] ])