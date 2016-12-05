baseline
defineDependencies: spec
	^ spec
		project: 'FamixDiff' with: [
			spec
				className: 'ConfigurationOfFamixDiff';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/Moose/FamixDiff/main';
				loads: 'ChangeModel' ];
		baseline: 'Tables' with: [ 
			spec
				repository: 'github://juliendelplanque/Tables/repository' ]
		yourself