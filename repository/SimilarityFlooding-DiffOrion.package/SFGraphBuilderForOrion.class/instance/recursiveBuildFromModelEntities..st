building
recursiveBuildFromModelEntities: famixEntities
	famixEntities do: [ :entity |
		buildStack isEmpty
			ifFalse: [ |from to|
				from := buildStack top versionIn: self model.
				to := entity versionIn: self model.
				(from isNotNil and: [ to isNotNil ])
					ifTrue: [ graph addEdge: (SFNamedEdge from: from to: to named: from className,to name forComposition: true) ] ].
		buildStack push: (entity versionIn: self model).
		self recursiveBuildFromModelEntities: (self childrenEntitiesOf: (entity versionIn: self model)).
		buildStack pop ]