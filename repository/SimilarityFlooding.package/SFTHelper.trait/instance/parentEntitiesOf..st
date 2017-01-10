helpers
parentEntitiesOf: anEntity
	^ anEntity class parentSelectors
			inject: OrderedCollection new
			into: [ :union :selector |
				(selector value: anEntity)
					ifNil: [ union union: #() ]
					ifNotNil: [ :p | union union: { p } ] ]