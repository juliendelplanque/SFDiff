models-metrics
ooModelsData
	^ #(('Project' 'Size V1' 'Size V2')),(#((renrakuV0100Model renrakuV0110Model) (renoirStV160Model renoirStV200Model) (libnotifyBindingCommit1Model libnotifyBindingCommit2Model) (smaCCCommit1Model smaCCCommit2Model) (texasHoldemPokerAICommit1Model texasHoldemPokerAICommit2Model) (matrixtoolkitCommit1Model matrixtoolkitCommit2Model) (verveineCommit1Model verveineCommit2Model)) with: #(Renraku RenoirSt LibnotifyBinding SmaCC TexasHoldemPokerAI Matrixtoolkit Verveine) collect: [ :versionSelectors :name |
		|model1 model2|
		model1 := versionSelectors first value: self.
		model2 := versionSelectors second value: self.
		{ name . (model1 allWithType: FAMIXClass) asSet size . (model2 allWithType: FAMIXClass) asSet size } ])