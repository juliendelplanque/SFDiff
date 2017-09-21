helpers
baseEntityOf: aMatch
	^ self entity: (super baseEntityOf: aMatch) in: sfDiff baseModel