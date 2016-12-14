baseline
defineDependencies: spec
	^ spec
		project: 'ChangeModel' with: [
			spec
				className: 'ConfigurationOfFamixDiff';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/Moose/FamixDiff/main';
				loads: 'ChangeModel' ];
		yourself