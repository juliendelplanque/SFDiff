criteria
criteria
	self flag: #todo.
	^ { 
		FADCriterion
			named: 'Classes names must be strictely equals.'
			withWeight: 0.4
			evaluator: [ :class :otherClass | class name = otherClass name ifTrue: [ 1.0 ] ifFalse: [ 0.0 ] ].
		FADCriterion
			named: 'Ratio of similar or matched operations.'
			withWeight: 0.2
			evaluator: [ :class :otherClass | self flag: #todo. 1.0 ].
		FADCriterion
			named: 'Ratio of similar or matched attributes.'
			withWeight: 0.2
			evaluator: [ :class :otherClass | self flag: #todo. 1.0 ] }