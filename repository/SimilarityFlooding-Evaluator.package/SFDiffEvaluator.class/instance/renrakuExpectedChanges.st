evaluation
renrakuExpectedChanges
	^ { 
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'guidedBan:' and: [ e belongsTo name = 'CompiledMethod' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'overriddenMethods' and: [ e belongsTo name = 'CompiledMethod' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'leftmostChainReceiver' and: [ e belongsTo name = 'RBCascadeNode' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'ban:' and: [ e belongsTo name = 'RBMethodNode' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'critics' and: [ e belongsTo name = 'RBMethodNode' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'guidedBan:' and: [ e belongsTo name = 'RBMethodNode' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'guidedBan' and: [ e belongsTo name = 'ReAbstractCritic' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReBasicMethodRule' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'checksMethod' and: [ e belongsTo name = 'ReBasicMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'isVisible' and: [ e belongsTo name = 'ReBasicMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'uniqueIdentifierName' and: [ e belongsTo name = 'ReBasicMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'checkMethod:' and: [ e belongsTo name = 'ReBasicMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'resultClass' and: [ e belongsTo name = 'ReBasicMethodRule' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReBasicTreeRule' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'checksAST' and: [ e belongsTo name = 'ReBasicTreeRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'isVisible' and: [ e belongsTo name = 'ReBasicTreeRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'uniqueIdentifierName' and: [ e belongsTo name = 'ReBasicTreeRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'checkMethod:' and: [ e belongsTo name = 'ReBasicTreeRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'resultClass' and: [ e belongsTo name = 'ReBasicTreeRule' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReInspectorPresentationsNonBlockSetup' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'basicCheck:' and: [ e belongsTo name = 'ReInspectorPresentationsNonBlockSetup' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'check:forCriticsDo:ifNone:' and: [ e belongsTo name = 'ReInspectorPresentationsNonBlockSetup' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'group' and: [ e belongsTo name = 'ReInspectorPresentationsNonBlockSetup' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'name' and: [ e belongsTo name = 'ReInspectorPresentationsNonBlockSetup' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'presentationScriptingMathods' and: [ e belongsTo name = 'ReInspectorPresentationsNonBlockSetup' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReInspectorPresentationsNonlazyCode' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'basicCheck:' and: [ e belongsTo name = 'ReInspectorPresentationsNonlazyCode' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'check:forCriticsDo:ifNone:' and: [ e belongsTo name = 'ReInspectorPresentationsNonlazyCode' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'group' and: [ e belongsTo name = 'ReInspectorPresentationsNonlazyCode' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'name' and: [ e belongsTo name = 'ReInspectorPresentationsNonlazyCode' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReReturnMethodRule' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'basicCheck:' and: [ e belongsTo name = 'ReReturnMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'group' and: [ e belongsTo name = 'ReReturnMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'name' and: [ e belongsTo name = 'ReReturnMethodRule' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'severity' and: [ e belongsTo name = 'ReReturnMethodRule' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXClass and: [ e name = 'ReReuseBasickCkeck' ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'basicCheck:' and: [ e belongsTo name = 'ReReuseBasickCkeck' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'group' and: [ e belongsTo name = 'ReReuseBasickCkeck' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'lintCheckSelectors' and: [ e belongsTo name = 'ReReuseBasickCkeck' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'name' and: [ e belongsTo name = 'ReReuseBasickCkeck' ] ] ]); yourself.
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'severity' and: [ e belongsTo name = 'ReReuseBasickCkeck' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'astRules' and: [ e belongsTo name = 'ReRuleManager' ] ] ]); yourself.
		
		FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXAttribute and: [ e name = 'astRules' and: [ e belongsTo name = 'ReRuleManager' ] ] ]); yourself.
		
		"FamixAddChange new entity: (self renrakuV0110Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'guidedBan:' and: [ e belongsTo name = 'TBehavior' ] ] ]); yourself."
		
		FamixRemovalChange new entity: (self renrakuV0100Model detect: [ :e | e class = FAMIXMethod and: [ e name = 'guidedSkip' and: [ e belongsTo name = 'ReAbstractCritic' ] ] ]); yourself.
	 }