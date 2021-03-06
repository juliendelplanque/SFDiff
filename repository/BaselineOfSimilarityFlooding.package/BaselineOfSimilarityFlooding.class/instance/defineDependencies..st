baseline
defineDependencies: spec
	^ spec
		project: 'ChangeModel' with: [
			spec
				className: 'ConfigurationOfFamixDiff';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/Moose/FamixDiff/main';
				loads: 'ChangeModel' ];
		project: 'FamixDiff' with: [
			spec
				className: 'ConfigurationOfFamixDiff';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/Moose/FamixDiff/main';
				loads: 'Core' ];
		project: 'Orion' with: [ 
			spec
				className: 'ConfigurationOfOrion';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/Moose/Orion/main' ];
		yourself