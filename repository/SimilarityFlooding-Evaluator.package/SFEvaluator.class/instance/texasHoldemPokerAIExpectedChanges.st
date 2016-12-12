evaluation
texasHoldemPokerAIExpectedChanges
	^ {	FamixRemovalChange new
			entity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'numberOfOccurrences' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixRemovalChange new
			entity: (self texasHoldemPokerAICommit1Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengthAverage' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengths' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getDeviation' and: [ e belongsTo name = 'ContextAggregate' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ModelResult' ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengthAverage' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'handStrengthDeviation' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'numberOfOccurences' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'ModelResult' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getHandStrengthAverage' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getHandStrengthDeviation' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self texasHoldemPokerAICommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'getNumberOfOccurences' and: [ e belongsTo name = 'ModelResult' ] ] ]);
			yourself }