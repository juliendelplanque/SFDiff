formula
useFormulaC
	self
		initialSigmaValueBlock: [ :node :graph | (graph initialSigmaValueOf: node) + (graph sigmaValueOf: node) ];
		sigmaValueTransmissionBlock: [ :currentValue :from :to :weight :graph |
			currentValue + (graph initialSigmaValueOf: to) + ((graph sigmaValueOf: from) * weight) ]