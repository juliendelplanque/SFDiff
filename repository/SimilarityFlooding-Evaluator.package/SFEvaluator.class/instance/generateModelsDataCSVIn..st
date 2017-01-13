models-metrics
generateModelsDataCSVIn: aDirectory
	(aDirectory / 'java-models-data.csv') writeStreamDo: [ :s |
		(NeoCSVWriter on: s)
			nextPutAll: self javaModelsData ].
	(aDirectory / 'smalltalk-models-data.csv') writeStreamDo: [ :s |
		(NeoCSVWriter on: s)
			nextPutAll: self smalltalkModelsData ].
	(aDirectory / 'sql-models-data.csv') writeStreamDo: [ :s |
		(NeoCSVWriter on: s)
			nextPutAll: self sqlModelsData ]