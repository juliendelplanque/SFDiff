filtering
makeProposalsRelative: aDictionary
	aDictionary keysAndValuesDo: [ :entity :proposals |
		| max |
		max := (proposals maxFor: #second) second.
		proposals do: [ :array | array at: 2 put: (array second / max) ] ]