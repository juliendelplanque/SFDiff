formula
useBasicFormula
	self
		initialSigmaValueBlock: [ :node :graph | graph sigmaValueOf: node ];
		sigmaValueTransmissionBlock: [ :currentValue :from :to :weight :graph |
			currentValue + ((graph sigmaValueOf: from) * weight) ]