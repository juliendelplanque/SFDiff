pcg ipg evaluation
pcgIpgDataAll
	| result |
	result := { self pcgIpgHeader } asOrderedCollection.
	#(appsiPCGIPG libnotifyBindingPCGIPG matrixtoolkitPCGIPG renoirStPCGIPG renrakuPCGIPG smaCCPCGIPG texasHoldemPokerAIPCGIPG verveinePCGIPG wikimediaPCGIPG) do: [ :selector | result add: (selector value: self) ] displayingProgress: 'PCG IPG evaluation.'.
	^ result