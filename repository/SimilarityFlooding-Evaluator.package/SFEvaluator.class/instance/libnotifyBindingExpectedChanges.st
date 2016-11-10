evaluation
libnotifyBindingExpectedChanges
	^ { 
		FamixMoveChange new
			baseEntity: (self libnotifyBindingCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBFFIError' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			targetEntity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBFFIError' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			yourself.
		FamixMoveChange new
			baseEntity: (self libnotifyBindingCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBLibnotify' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			targetEntity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBLibnotify' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			yourself.
		FamixMoveChange new
			baseEntity: (self libnotifyBindingCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBNotification' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			targetEntity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBNotification' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			yourself.
		FamixMoveChange new
			baseEntity: (self libnotifyBindingCommit1Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBStringValueHolder' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			targetEntity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXClass and: [ e name = 'LBStringValueHolder' and: [ e parentPackage name = 'LibnotifyBinding' ] ] ]);
			yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationAdd:action:label:callBack:userData:freeFunction:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationClearActions:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationClearHints:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationSet:hint:byte:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationSet:hint:bytearray:size:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationSet:hint:double:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationSet:hint:int32:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'notificationSet:hint:string:' and: [ e belongsTo name = 'LBLibnotify' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'clearActions' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'clearHints' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'desktopEntry:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'setHint:byte:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'setHint:bytearray:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'setHint:double:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'setHint:integer:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'setHint:string:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'soundFile:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'suppressSound:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'x:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
		FamixAddChange new entity: (self libnotifyBindingCommit2Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'y:' and: [ e belongsTo name = 'LBNotification' ] ] ]); yourself.
	 }