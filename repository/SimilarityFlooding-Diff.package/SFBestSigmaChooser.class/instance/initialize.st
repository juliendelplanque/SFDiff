initialization
initialize
	super initialize.
	self containmentOrder: {
		ORNamespace.
		ORPackage.
		ORClass.
		ORMethod.
		ORAttribute.
		ORLocalVariable.
		ORParameter }