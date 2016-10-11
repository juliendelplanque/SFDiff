comparing
hash
	^ (self entityAccepted hash bitOr: self threshold hash) bitOr: self criteria hash