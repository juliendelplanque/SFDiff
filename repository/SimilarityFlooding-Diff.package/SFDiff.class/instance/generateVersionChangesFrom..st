diffing
generateVersionChangesFrom: matches
	matches keysAndValuesDo: [ :key :value |
		self changes
			add: (FamixVersionChange new
						baseEntity: key;
						targetEntity: value;
						yourself) ].