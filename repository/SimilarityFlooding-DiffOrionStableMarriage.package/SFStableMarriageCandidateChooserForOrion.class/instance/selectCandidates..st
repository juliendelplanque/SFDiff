selecting
selectCandidates: matchCandidates
	| containmentOrder typeToCandidates newMatches |
	containmentOrder := {ORNamespace.
		ORPackage.
		ORClass.
		ORMethod.
		ORAttribute.
		ORLocalVariable.
		ORParameter}.
	
	newMatches := Set new.
	typeToCandidates := (containmentOrder collect: [ :type |
		type -> (matchCandidates select: [ :matchCandidate | matchCandidate baseEntity class = type ]) ]) asDictionary.
	self halt.
	containmentOrder doWithIndex: [ :type :i |
		|candidates moveAndRenameChanges|
		candidates := typeToCandidates at: type.
		
		moveAndRenameChanges := (self marriagesForCandidates: candidates) collect: [ :marriage |
		(self canGenerateRenameChangeFrom: marriage man data and: marriage woman data knowingNewMatches: newMatches)
			ifTrue: [ 
				FamixRenameChange new
					baseEntity: marriage man data;
					targetEntity: marriage woman data;
					yourself ]
			ifFalse: [ 
				(self canGenerateMoveChangeFrom: marriage man data and: marriage woman data knowingNewMatches: newMatches)
					ifTrue: [ 
						FamixMoveChange new
							baseEntity: marriage man data;
							targetEntity: marriage woman data;
							yourself ]
					ifFalse: [ Halt now: 'Should not happen.' ] ] ].
		Halt if: [ candidates size > 0 ].
		moveAndRenameChanges do: [ :moveOrRenameChange |
			newMatches
				add: moveAndRenameChanges;
				addAll: (self retryEqualMatchFor: (moveOrRenameChange baseEntity versionIn: sfDiff baseModel) and: (moveOrRenameChange targetEntity versionIn: sfDiff targetModel)) ].
		
		containmentOrder from: (i + 1) to: containmentOrder size do: [ :t |
			typeToCandidates at: type put: ((typeToCandidates at: type) reject: [ :match |
				newMatches anySatisfy: [ :any |
					(any baseEntity versionIn: sfDiff baseModel) = (match baseEntity versionIn: sfDiff baseModel)
						and: [ (any targetEntity versionIn: sfDiff targetModel) = (match targetEntity versionIn: sfDiff targetModel) ] ] ]) ] ].
	^ newMatches