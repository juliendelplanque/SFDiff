gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite table
		title: 'Results';
		display: [ :aCollection | (1 to: self results size) collect: [ :index | 
			|result|
			result := self results at: index.
			"{	result diffName.
				result projectName.
				result timeToCompute.
				result actualChanges size.
				result expectedChanges size.
				result notDetected size.
				result falsePositives size.
				result precision asFloat.
				result recall asFloat
			}"] ];
		beMultiple;
		searchOn: [:text :each | 
			Smalltalk compiler evaluate: ' | entity each | each := self. entity := each.', text for: each value logged: false];
		column: 'Diff' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result diffName ] width: 100;
		column: 'Project' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result projectName ] width: 135;
		column: 'Computation time' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result timeToCompute ] width: 125;
		column: 'Actual changes' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result actualChanges size ] width: 100;
		column: 'Expected changes' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result expectedChanges size ] width: 110;
		column: 'Not detected' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result notDetected size ] width: 110;
		column: 'False positives' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result falsePositives size ] width: 110;
		column: 'Precision' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result precision asFloat ] width: 100;
		column: 'Recall' evaluated: [ :result | GTObjectPrinter new asTruncatedTextFrom: result recall asFloat ] width: 100;
		send: [ :result | 
			result isNil
				ifTrue: [ nil ]
				ifFalse: [ result value size = 1 
					ifTrue: [result anyOne value]  
					ifFalse: [self species withAll: (result collect: [:each | each value])]]];
		showOnly: 50;
		helpMessage: 'Quick selection field. Given your INPUT, it executes: self select: [:each | INPUT ]'.