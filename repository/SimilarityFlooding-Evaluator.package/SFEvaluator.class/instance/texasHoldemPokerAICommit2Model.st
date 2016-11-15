models
texasHoldemPokerAICommit2Model
	"Model corresponding to the commit with the hash: 'e2e966882b69a6b825fd08347ecdf176b8aaed26'"
	^ texasHoldemPokerAICommit2Model ifNil: [ texasHoldemPokerAICommit2Model := self loadModelFromFile: self mseDirectory / 'texas-holdem-poker-ai.commit2.mse' ]