models-metrics
javaModelsData
	^ #(('Project' 'Version' 'Classes')),(#(texasHoldemPokerAICommit1Model texasHoldemPokerAICommit2Model matrixtoolkitCommit1Model matrixtoolkitCommit2Model verveineCommit1Model verveineCommit2Model) with: #((TexasHoldemPokerAI 'v1') (TexasHoldemPokerAI 'v2') (Matrixtoolkit 'v1') (Matrixtoolkit 'v2') (Verveine 'v1') (Verveine 'v2')) collect: [ :versionSelector :nameVersion |
		|model|
		model := versionSelector value: self.
		{ nameVersion first .
		  nameVersion second .
		 (model allWithType: FAMIXClass) asSet size 
		} ])