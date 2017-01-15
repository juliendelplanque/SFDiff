pcg ipg evaluation
pcgIpgDataAll
	^ { self pcgIpgHeader } , (#(appsiPCGIPG libnotifyBindingPCGIPG matrixtoolkitPCGIPG renoirStPCGIPG renrakuPCGIPG smaCCPCGIPG texasHoldemPokerAIPCGIPG verveinePCGIPG wikimediaPCGIPG) collect: [ :selector | selector value: self ])