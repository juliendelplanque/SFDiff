baseline
definePackages: spec
	^ spec
		package: 'SimilarityFlooding' with: [ spec requires: #('ChangeModel') ];
		package: 'SimilarityFlooding-Tests' with: [ spec requires: #('SimilarityFlooding') ];
		package: 'SimilarityFlooding-Diff' with: [ spec requires: #('SimilarityFlooding') ];
		package: 'SimilarityFlooding-Diff-Tests' with: [ spec requires: #('SimilarityFlooding-Diff') ];
		package: 'SimilarityFlooding-Evaluator' with: [ spec requires: #('SimilarityFlooding' 'FamixDiff') ];
		yourself