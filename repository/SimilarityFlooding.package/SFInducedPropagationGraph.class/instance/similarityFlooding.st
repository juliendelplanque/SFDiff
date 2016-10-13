computation
similarityFlooding
	[ self mustStop ]
		whileFalse: [ 
			self doIteration.
			iterationCount := iterationCount + 1 ]