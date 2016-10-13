instance creation
base: aFAMIXEntity target: anotherFAMIXEntity
	^ self new
		baseEntity: aFAMIXEntity;
		targetEntity: anotherFAMIXEntity;
		yourself