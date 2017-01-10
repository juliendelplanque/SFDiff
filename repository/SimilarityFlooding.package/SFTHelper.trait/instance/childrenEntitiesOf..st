helpers
childrenEntitiesOf: anEntity
	^ anEntity class childrenSelectors
			inject: OrderedCollection new
			into: [ :union :selector |
				union union: (selector value: anEntity) ]