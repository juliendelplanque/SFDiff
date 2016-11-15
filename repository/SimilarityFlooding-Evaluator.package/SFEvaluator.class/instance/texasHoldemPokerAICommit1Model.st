models
texasHoldemPokerAICommit1Model
	"Model corresponding to the commit with the hash: '5ee476c89e1aa617b9e39c773805907bfffa486f'"
	^ texasHoldemPokerAICommit1Model ifNil: [ texasHoldemPokerAICommit1Model := self loadModelFromFile: self mseDirectory / 'texas-holdem-poker-ai.commit1.mse' ]