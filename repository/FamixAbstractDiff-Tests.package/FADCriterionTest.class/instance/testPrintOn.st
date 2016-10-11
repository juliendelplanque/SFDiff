tests-printing
testPrintOn
	criterion name: 'A good criterion name.'.
	self assert: criterion printString equals: 'a FADCriterion(A good criterion name.)'