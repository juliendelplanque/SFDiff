change generation
generateMoveAndRenameChangesFromCandidates: matchCandidates knownMatches: matches
	| candidateChooser newMatches |
	candidateChooser := self candidateChooserClass new
								sfDiff: self;
								knownMatches: matches associations;
								yourself.
	newMatches := candidateChooser selectCandidates: matchCandidates.
	"Generate version changes for new matches."
	newMatches reject: #isVersion thenDo: [ :match |
		self changes add: match ].
	newMatches select: #isVersion thenDo: [ :match |
		self changes
			removeAllSuchThat: [ :change | change baseEntity = match baseEntity or: [ change targetEntity = match targetEntity ] ];
			add: match ]