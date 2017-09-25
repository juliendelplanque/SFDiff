comparing
hash
	^ (((self from hash bitXor: self to hash)
			bitXor: self isForComposition hash)
				bitXor: self name hash)
					bitXor: self weight hash