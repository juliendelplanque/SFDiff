joining
joinModel: aMooseModel withModel: anotherMooseModel
	^ self
		joinModel: aMooseModel
		withModel: anotherMooseModel
		initialSigmaValueBlock: [ :nodes | (nodes collect: [ :node | node -> 1 ]) asDictionary ]