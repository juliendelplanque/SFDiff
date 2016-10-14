accessing-computed
matchCandidates
	"Returns the list of match candidates sorted by decreasing sigma value."
	^ (self sigmaValues associations sorted: [ :a :b | a value > b value ])
		collect: [ :association |
			SFMatchCandidate new
				baseEntity: association key baseEntity;
				targetEntity: association key targetEntity;
				sigmaValue: association value;
				yourself ].