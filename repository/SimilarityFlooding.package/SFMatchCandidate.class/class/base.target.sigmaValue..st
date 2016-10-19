instance creation
base: anEntity target: anotherEntity sigmaValue: aNumber
	^ self new
			baseEntity: anEntity;
			targetEntity: anotherEntity;
			sigmaValue: aNumber;
			yourself