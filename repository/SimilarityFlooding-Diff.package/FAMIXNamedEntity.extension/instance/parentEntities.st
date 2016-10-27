*SimilarityFlooding-Diff
parentEntities
	^ (self class parentSelector
			inject: OrderedCollection new
			into: [ :collection :selector |
				collection
					add: (selector value: self);
					yourself ]) reject: #isNil