comparing
hash
	^ (self baseEntity hash
			bitXor: self targetEntity hash)
			bitXor: self sigmaValue hash