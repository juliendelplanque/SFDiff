accessing - time to run
timeData
	^ { self preprocessTime . self pairwiseTime . self inducedPropagationTime . self sfTime . self changeBuildingTime }