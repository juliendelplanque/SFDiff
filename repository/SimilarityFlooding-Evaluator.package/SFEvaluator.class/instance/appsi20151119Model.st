models
appsi20151119Model
	^ appsi20151119Model ifNil: [ appsi20151119Model := FLMaterializer materializeFromFileNamed: (self mseDirectory / 'appsi20151119.fuel') pathString ]