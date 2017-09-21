helpers
targetEntityOf: aMatch
	^ self entity: (super targetEntityOf: aMatch) in: sfDiff targetModel