joining
join: aMooseModel with: anotherMooseModel
	^ self
		join: aMooseModel
		with: anotherMooseModel
		initialSigmaValueBlock: [ :nodes | (nodes collect: [ :node | node -> 1 ]) asDictionary ]