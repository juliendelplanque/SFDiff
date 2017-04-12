adding
addEdge: aSFEdge
	| key subkey |
	key := self edgeDictKeyBlock value: aSFEdge.
	subkey := self edgeDictSubkeyBlock value: aSFEdge.
	(self nodeToEdgesDict includesKey: key)
		ifTrue: [ 
			((self nodeToEdgesDict at: key) includesKey: subkey)
				ifTrue: [ ((self nodeToEdgesDict at: key) at: subkey) add: aSFEdge ]
				ifFalse: [ 
					(self nodeToEdgesDict at: key)
						at: subkey put: (OrderedCollection with: aSFEdge) ] ]
		ifFalse: [ 
			self nodeToEdgesDict at: key put: Dictionary new.
			(self nodeToEdgesDict at: key)
				at: subkey put: (OrderedCollection with: aSFEdge) ]