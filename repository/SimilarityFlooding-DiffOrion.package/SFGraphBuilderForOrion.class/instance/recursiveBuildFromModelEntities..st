building
recursiveBuildFromModelEntities: famixEntities
	famixEntities do: [ :entity |
		buildStack isEmpty
			ifFalse: [ 
				graph addEdge: (SFNamedEdge from: (buildStack top versionIn: self model) to: (entity versionIn: self model) named: buildStack top className,entity name forComposition: true) ].
		buildStack push: entity.
		self recursiveBuildFromModelEntities: (self childrenEntitiesOf: entity).
		buildStack pop ]