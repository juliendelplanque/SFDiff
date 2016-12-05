baseline
definePackages: spec
	^ spec
		package: 'SimilarityFlooding' with: [ spec requires: #('FamixDiff') ];
		package: 'SimilarityFlooding-Tests' with: [ spec requires: #('SimilarityFlooding') ];
		package: 'SimilarityFlooding-Diff' with: [ spec requires: #('SimilarityFlooding') ];
		package: 'SimilarityFlooding-Evaluator' with: [ spec requires: #('SimilarityFlooding' 'Tables') ];
		yourself