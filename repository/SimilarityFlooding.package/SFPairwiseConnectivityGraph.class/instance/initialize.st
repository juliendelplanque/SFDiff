initialization
initialize
	super initialize.
	incomingEdges := SFPCGEdgesStore new
								edgeDictKeyBlock: [ :e | e to ];
								edgeDictSubkeyBlock: [ :e | e name ];
								yourself.
	outgoingEdges := SFPCGEdgesStore new
								edgeDictKeyBlock: [ :e | e from ];
								edgeDictSubkeyBlock: [ :e | e name ];
								yourself