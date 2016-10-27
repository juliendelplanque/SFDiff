*SimilarityFlooding-Diff
parentEntity
	"| entities |
	entities := self parentEntities.
	entities ifEmpty: [ ^ nil ].
	entities size > 1
		ifTrue: [ 
			self error: ('Please the redefine this method in {1}, I don''t know which parent I should choose...'
								format: { self className }) ].
	^ entities first"
	^ self belongsTo