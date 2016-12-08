computing
precision
	"Proportion of changes without false positives found in the exepected changes set"

	^ self truePositives size / (self truePositives size + self falsePositives size)