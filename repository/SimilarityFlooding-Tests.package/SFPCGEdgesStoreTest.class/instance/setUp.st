running
setUp
	store := SFPCGEdgesStore new
					edgeDictKeyBlock: [ :e | e from ];
					edgeDictSubkeyBlock: [ :e | e name ];
					yourself.