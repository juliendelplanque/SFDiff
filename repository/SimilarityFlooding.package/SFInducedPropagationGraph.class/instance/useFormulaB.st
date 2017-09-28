formula
useFormulaB
	self
		initialSigmaValueBlock: [ :node :graph | 0 ];
		sigmaValueTransmissionBlock: [ :currentValue :from :to :weight :graph |
			currentValue + (graph initialSigmaValueOf: to) + ((graph sigmaValueOf: from) * weight) ]