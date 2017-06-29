change generation
generateMoveAndRenameChangesFromCandidates: matchCandidates knownMatches: matches
	| candidateChooser newMatches |
	candidateChooser := self candidateChooserClass new
								sfDiff: self;
								knownMatches: matches;
								yourself.
	newMatches := candidateChooser selectCandidates: matchCandidates.
	"self halt."
	"Generate version changes for new matches."
	newMatches reject: #isVersion thenDo: [ :match |
		self changes add: match ].
	newMatches select: #isVersion thenDo: [ :match |
		self changes
			removeAllSuchThat: [ :change | (change baseEntity versionIn: self baseModel) = (match baseEntity versionIn: self baseModel) or: [ (change targetEntity versionIn: self targetModel) = (match targetEntity versionIn: self targetModel) ] ];
			add: match ]