selecting
selectCandidates: matchCandidates
	| newMatches |
	newMatches := Set new.
	self candidatesGroupsFrom: matchCandidates do: [ :candidatesGroup |
		| sorted |
		sorted := self sortBySigmaValueDesc: candidatesGroup andRemoveMatchesIncludedIn: newMatches.
		"Perform the while's block until there is no more match to process (#sorted is empty)
		 or the element with the greater sigma value of #sorted is smaller than the match threshold."
		[ sorted isNotEmpty and: [ sorted first sigmaValue >= self sfDiff matchThreshold ] ]
			whileTrue: [ | match |
				match := sorted first.
				"Since at this step, #match is considered as being the right mapping of entities
				 between the first and the second version of the model, we remove all other
				 potential mapping that contain either the base or the target entity of #match."
				sorted := self filterMappingsIn: sorted allButFirst incoherentWithAcceptedMapping: match.
				"Now that we consider #match to be a correct mapping, we retry an equal match in
				 order to try to generate version change from entities contained in the entities
				 matched. This step may eventually prune future matches to be processed."
				newMatches addAll: (self retryEqualMatchFor: (self baseEntityOf: match) and: (self targetEntityOf: match)).
				"Finally, generate the move or rename change corresponding to the #match mapping."
				self generateMoveOrRenameChangeFrom: match in: newMatches ] ].
	^ newMatches