evaluation
evaluateAllDiffAndBuildTable
	| table |
	table := Table header: #('Diff' 'Project' 'Time to run' 'Actual changes' 'Expected changes' 'Not detected' 'False positives' 'Precision' 'Recall').
	(self evaluateDiffs: #(evaluateOnLibnotifyBinding evaluateOnRenoirSt evaluateOnRenraku evaluateOnSmaCC evaluateOnTexasHoldemPokerAI)) do: [ :result |
		table
			addRow:
				{result diffName.
				result projectName.
				result timeToCompute.
				result actualChanges size.
				result expectedChanges size.
				result notDetected size.
				result falsePositives size.
				result precision asFloat.
				result recall asFloat} ].
	^ table