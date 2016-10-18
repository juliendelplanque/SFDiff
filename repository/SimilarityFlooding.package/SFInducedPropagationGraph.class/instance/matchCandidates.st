accessing-computed
matchCandidates
	"Returns the list of match candidates."
	^ (self sigmaValues associations)
		collect: [ :association |
			SFMatchCandidate new
				baseEntity: association key baseEntity;
				targetEntity: association key targetEntity;
				sigmaValue: association value;
				yourself ].