tests-accessing
testWeight
	self
		should: [ criterion weight: 42 ] raise: FADWrongWeightValue;
		should: [ criterion weight: 42.0 ] raise: FADWrongWeightValue;
		should: [ criterion weight: 0 ] raise: FADWrongWeightValue.
	
	criterion weight: 1.
	self assert: criterion weight equals: 1.
	
	criterion weight: 1/2.
	self assert: criterion weight equals: 1/2