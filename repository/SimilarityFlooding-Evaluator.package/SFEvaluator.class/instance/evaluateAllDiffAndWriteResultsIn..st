evaluation
evaluateAllDiffAndWriteResultsIn: aDirectory
	| results |
	results := self evaluateAllDiff.
					
	(aDirectory / ('sfevaluation.{1}.csv' format: { DateAndTime now asFileNameCompatibleString }))
		writeStreamDo: [ :s | results writeCSVOn:s ].
	^ results