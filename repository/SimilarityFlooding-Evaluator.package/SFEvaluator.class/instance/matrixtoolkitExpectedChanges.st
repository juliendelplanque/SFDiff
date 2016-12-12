expected changes
matrixtoolkitExpectedChanges
	^ {
	FamixRenameChange new
		baseEntity: (self matrixtoolkitCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ArpackSqSym' ] ]);
		targetEntity: (self matrixtoolkitCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ArpackSym' ] ]);
		yourself.
	FamixRenameChange new
		baseEntity: (self matrixtoolkitCommit1Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'ArpackSqSym' and: [ e belongsTo name = 'ArpackSqSym' ] ] ]);
		targetEntity: (self matrixtoolkitCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'ArpackSym' and: [ e belongsTo name = 'ArpackSym' ] ] ]);
		yourself.
	FamixRenameChange new
		baseEntity: (self matrixtoolkitCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ArpackSqSymTest' ] ]);
		targetEntity: (self matrixtoolkitCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ArpackSymTest' ] ]);
		yourself.
	 }