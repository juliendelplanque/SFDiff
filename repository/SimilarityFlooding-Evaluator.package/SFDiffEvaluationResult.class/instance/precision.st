computing
precision
	"Proportion of changes without false positives found in the exepected changes set"

	^ (self actualChanges size - self falsePositives size) / self expectedChanges size