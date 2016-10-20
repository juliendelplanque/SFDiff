filtering
filter: matchCandidates
	^ matchCandidates reject: [ :each | each baseEntity isStub or: [ each targetEntity isStub ] ].