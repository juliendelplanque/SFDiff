expected changes
smaCCExpectedChanges
	^ { 
		FamixAddChange new
			entity: (self smaCCCommit2Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'category' and: [ e belongsTo name = 'SmaCCSmalltalkCodeGenerator' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self smaCCCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'category' and: [ e belongsTo name = 'SmaCCSmalltalkCodeGenerator' ] ] ]);
			yourself.
		FamixAddChange new
			entity: (self smaCCCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'category:' and: [ e belongsTo name = 'SmaCCSmalltalkCodeGenerator' ] ] ]);
			yourself.
	 }