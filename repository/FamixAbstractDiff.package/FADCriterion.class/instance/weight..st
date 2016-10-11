accessing
weight: aFloatOrAFraction
	((#(#isFloat #isFraction) anySatisfy: [ :selector | selector value: aFloatOrAFraction ]) or: [ aFloatOrAFraction = 1 ])
		ifFalse: [ FADWrongWeightValue signal: 'The weight must be a Float, a Fraction or 1.' ].
	(aFloatOrAFraction > 0.0 and: [ aFloatOrAFraction <= 1.0 ])
		ifFalse: [ FADWrongWeightValue signal: 'The weight must be included in range ]0, 1].' ].
	weight := aFloatOrAFraction