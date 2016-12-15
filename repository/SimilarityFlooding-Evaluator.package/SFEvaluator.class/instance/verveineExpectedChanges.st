expected changes
verveineExpectedChanges
	^ { "Add changes"
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXClass and: [ e name = 'NameResolver' ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'context' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'dico' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'index' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'NameResolver' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'findAtTopLevel' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'getContext' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'getMethodParentFromBindingOrContext' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isDestructorBinding' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isFullyQualified' and: [ e belongsTo name = 'NameResolver' and: [ (e parameters first declaredType name = 'IASTName') and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isFullyQualified' and: [ e belongsTo name = 'NameResolver' and: [ (e parameters first declaredType name = 'String') and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isMethodBinding' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'mkStubKey' and: [ e belongsTo name = 'NameResolver' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName' 'ContainerEntity' 'Class<T>')) and: [ e parameters size = 3 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'mkStubKey' and: [ e belongsTo name = 'NameResolver' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'Class<T>')) and: [ e parameters size = 2 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'nameQualifier' and: [ e belongsTo name = 'NameResolver' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'nameQualifier' and: [ e belongsTo name = 'NameResolver' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'setContext' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself.
	"FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'unqualifiedName' and: [ e belongsTo name = 'NameResolver' ] ]]);
		yourself."
	FamixAddChange new
		entity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'PackageDefVisitor' and: [ e belongsTo name = 'PackageDefVisitor' ] ]]);
		yourself.
	"Removal changes"
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'count' and: [ e belongsTo name = 'CDictionary' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'tracer' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXAttribute and: [ e name = 'absoluteRootFolder' and: [ e belongsTo name = 'IncludeVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'findTopLevel' and: [ e belongsTo name = 'AbstractVisitor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'getParentFromBindingOrContext' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'getParentOfFullyQualifiedName' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isDestructorBinding' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isFullyQualified' and: [ e belongsTo name = 'AbstractVisitor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isFullyQualified' and: [ e belongsTo name = 'AbstractVisitor'and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'isMethodBinding' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'recursiveEnsureNamespace' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'recursiveEnsureParentNamespace' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself.
	"FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'unqualifiedName' and: [ e belongsTo name = 'AbstractVisitor' ] ]]);
		yourself."
	FamixRemovalChange new
		entity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'PackageDefVisistor' and: [ e belongsTo name = 'PackageDefVisistor' ] ]]);
		yourself.
	"Move changes"
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'ensureBehaviouralFromName' ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'ensureBehaviouralFromName' ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'extractParentNameFromMethodFullname' ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'extractParentNameFromMethodFullname' ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'ensureBehavioural' ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'ensureBehavioural' ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'unqualifiedName' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'unqualifiedName' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'resolveOrNamespace' ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'resolveOrNamespace' ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'Type')) and: [ e parameters size = 2 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'Type')) and: [ e parameters size = 2 ] ] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'ScopingEntity')) and: [ e parameters size = 2 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'ScopingEntity')) and: [ e parameters size = 2 ] ] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'BehaviouralEntity')) and: [ e parameters size = 2 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'BehaviouralEntity')) and: [ e parameters size = 2 ] ] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'ContainerEntity')) and: [ e parameters size = 2 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'findInLocals' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'ContainerEntity')) and: [ e parameters size = 2 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'isConstructor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('BehaviouralEntity')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'isConstructor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('BehaviouralEntity')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'getParentTypeFromNameOrContext' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'getParentTypeFromNameOrContext' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'isStubBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IBinding')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'isStubBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IBinding')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'resolveOrClass' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'resolveOrClass' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'extractSignatureFromMethodFullname' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'extractSignatureFromMethodFullname' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'findInParent' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'NamedEntity' 'boolean')) and: [ e parameters size = 3 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'findInParent' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String' 'NamedEntity' 'boolean')) and: [ e parameters size = 3 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'isConstructorBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IBinding')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'isConstructorBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IBinding')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'getBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'getBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'computeSignatureFromAST' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTFunctionDeclarator')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'computeSignatureFromAST' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTFunctionDeclarator')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'getFunctionBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTFunctionDeclarator' 'IASTName')) and: [ e parameters size = 2 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'getFunctionBinding' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTFunctionDeclarator' 'IASTName')) and: [ e parameters size = 2 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'isFullyQualified' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'isFullyQualified' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'isDestructor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('BehaviouralEntity')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'isDestructor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('BehaviouralEntity')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'AbstractVisitor' and: [ e name = 'unqualifiedName' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ] ] ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e belongsTo name = 'NameResolver' and: [ e name = 'unqualifiedName' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('String')) and: [ e parameters size = 1 ]] ]]]);
		yourself.
	FamixMoveChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'mkStubKey' and: [ e belongsTo name = 'AbstractVisitor' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName' 'Class<T>')) and: [ e parameters size = 2 ] ] ] ]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXMethod and: [ e name = 'mkStubKey' and: [ e belongsTo name = 'NameResolver' and: [ ((e parameters collect: [ :p | p declaredType name ]) includesAll: #('IASTName' 'Class<T>')) and: [ e parameters size = 2 ] ] ] ]]);
		yourself.
	"Rename changes"
	FamixRenameChange new
		baseEntity: (self verveineCommit1Model entities detect: [ :e | e class = FAMIXClass and: [ e belongsTo name = 'def' and: [ e name = 'PackageDefVisistor' ]]]);
		targetEntity: (self verveineCommit2Model entities detect: [ :e | e class = FAMIXClass and: [ e belongsTo name = 'def' and: [ e name = 'PackageDefVisitor' ]]]);
		yourself.
	}