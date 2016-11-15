evaluation
texasHoldemPokerAIExpectedChanges
	^ { FamixBodyChange new
			baseEntity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getEstimatedHandStrength' and: [ e belongsTo name = 'OpponentModeler' ] ] ]);
			targetEntity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getEstimatedHandStrength' and: [ e belongsTo name = 'OpponentModeler' ] ] ]);
			yourself.
		FamixRemovalChange new
			entity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'numberOfOccurrences' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixRemovalChange new
			entity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengthAverage' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengths' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ModelResult' ] ]);
			yourself.
		FamixBodyChange new
			baseEntity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'retrieve' and: [ e belongsTo name = 'OpponentsModelPersistence' ] ] ]);
			targetEntity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'retrieve' and: [ e belongsTo name = 'OpponentsModelPersistence' ] ] ]);
			yourself. }