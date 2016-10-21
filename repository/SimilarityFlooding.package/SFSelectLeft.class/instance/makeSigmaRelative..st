filtering
makeSigmaRelative: aDictionary
	aDictionary keysAndValuesDo: [ :entity :proposals |
		| max |
		max := (proposals maxFor: #sigmaValue) sigmaValue.
		proposals do: [ :matchCandidate | 
			matchCandidate relativeSigmaValue: matchCandidate sigmaValue / max ] ]