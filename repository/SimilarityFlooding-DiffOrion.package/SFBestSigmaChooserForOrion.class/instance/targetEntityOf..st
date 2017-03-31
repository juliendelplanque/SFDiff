helpers
targetEntityOf: aMatch
	^ (super targetEntityOf: aMatch) versionIn: sfDiff targetModel