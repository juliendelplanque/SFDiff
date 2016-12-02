comparing
hash
	^ (super hash bitOr: self name hash) bitOr: self isForComposition hash