models-metrics
smalltalkModelsData
	^ #(('Project' 'Version' 'Classes')),(#(renrakuV0100Model renrakuV0110Model renoirStV160Model renoirStV200Model libnotifyBindingCommit1Model libnotifyBindingCommit2Model smaCCCommit1Model smaCCCommit2Model) with: #((Renraku '0.1.0.0') (Renraku '0.1.1.0') (RenoirSt '1.6.0') (RenoirSt '2.0.0') (LibnotifyBinding 'v1') (LibnotifyBinding 'v2') (SmaCC 'v1') (SmaCC 'v2')) collect: [ :versionSelector :nameVersion |
		|model|
		model := versionSelector value: self.
		{ 
			nameVersion first .
			nameVersion second .
			(model allWithType: FAMIXClass) asSet size 
		} ])