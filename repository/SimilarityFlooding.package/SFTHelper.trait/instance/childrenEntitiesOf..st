helpers
childrenEntitiesOf: anEntity
	"^ anEntity class childrenSelectors
			inject: OrderedCollection new
			into: [ :union :selector |
				(selector value: anEntity)
					ifNil: [ union union: #() ]
					ifNotNil: [ :p | union union: {p} ] ]"
	^ anEntity childrenEntities