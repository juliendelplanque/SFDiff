computation
similarityFlooding
	"Test if nodes are empty in case everything has been matched during pre-processing."
	[ self nodes isEmpty or: [ self mustStop ] ]
		whileFalse: [ 
			self doIteration.
			iterationCount := iterationCount + 1 ]