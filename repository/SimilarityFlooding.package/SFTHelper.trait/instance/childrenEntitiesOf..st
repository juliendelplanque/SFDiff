helpers
childrenEntitiesOf: anEntity
	^ anEntity class childrenAccessors
			inject: OrderedCollection new
			into: [ :union :selector |
				union union: (selector value: anEntity) ]