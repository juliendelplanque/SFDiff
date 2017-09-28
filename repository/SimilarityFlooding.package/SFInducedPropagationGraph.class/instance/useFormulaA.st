formula
useFormulaA
	self
		initialSigmaValueBlock: [ :node :graph | graph initialSigmaValueOf: node ];
		sigmaValueTransmissionBlock: [ :currentValue :from :to :weight :graph |
			currentValue + ((graph sigmaValueOf: from) * weight) ]