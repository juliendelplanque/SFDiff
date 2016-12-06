computing
precision
	^ (self actualChanges size - self falsePositives size) / self expectedChanges size