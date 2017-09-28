tests-computation
testComputeDeltaWithOldSigmasNewSigmas
	| ipg delta |
	ipg := SFInducedPropagationGraph new.
	delta := ipg
					computeDeltaWithOldSigmas: { 
						$a -> 1.
						$b -> 0.5.
						$c -> 0.3 } asDictionary
					newSigmas: { 
						$a -> 0.2.
						$b -> 0.3.
						$c -> 0.6 } asDictionary.
						
	self assert: delta equals: (((1 - 0.2)**2) + ((0.5 - 0.3)**2) + ((0.3 - 0.6)**2)) sqrt