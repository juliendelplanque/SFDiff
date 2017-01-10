converting
asExportableData
	^ {self diffName.
	self projectName.
	self timeToCompute.
	self actualChanges size.
	self expectedChanges size.
	self notDetected size.
	self falsePositives size.
	self precision asFloat.
	self recall asFloat}