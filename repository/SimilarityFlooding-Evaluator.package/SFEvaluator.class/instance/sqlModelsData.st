models-metrics
sqlModelsData
	^ #(('Project' 'Version' 'Tables' 'Views' 'Functions' 'Triggers')),(#(appsi20151012Model appsi20151119Model wikimedia170Model wikimedia180Model) with: #(('AppSI' 'v1') ('AppSI' 'v2') ('WikiMedia' '1.7.0') ('WikiMedia' '1.8.0')) collect: [ :versionSelector :nameVersion |
		|model|
		model := versionSelector value: self.
		{ nameVersion first .
		 nameVersion second. 
		 (model allWithType: FAMIXTable) asSet size.
		 (model allWithType: FAMIXView) asSet size.
		 (model allWithType: FAMIXSQLFunction) asSet size.
		 (model allWithType: FAMIXTrigger) asSet size } ])