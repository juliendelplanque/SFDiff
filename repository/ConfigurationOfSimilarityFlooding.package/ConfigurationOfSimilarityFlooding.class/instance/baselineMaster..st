baselines
baselineMaster: spec
	<version: 'master-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec baseline: 'SimilarityFlooding' with: [
			spec repository: 'github://juliendelplanque/SFDiff/repository' ] ].