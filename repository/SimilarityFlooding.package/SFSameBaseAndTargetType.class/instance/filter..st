filtering
filter: matchCandidates
	^ matchCandidates select: [ :each | each baseEntity class = each targetEntity class ].