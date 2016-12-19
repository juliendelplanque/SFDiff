change generation
generateMoveAndRenameChangesFromCandidates: matchCandidates
	| candidateChooser newMatches |
	candidateChooser := SFBestSigmaChooser new
								sfDiff: self;
								yourself.
	newMatches := candidateChooser selectCandidates: matchCandidates.
	"Generate version changes for new matches."
	newMatches reject: #isVersion thenDo: [ :match |
		self changes add: match ].
	newMatches select: #isVersion thenDo: [ :match |
		self changes
			removeAllSuchThat: [ :change | change baseEntity = match baseEntity or: [ change targetEntity = match targetEntity ] ];
			add: match ]