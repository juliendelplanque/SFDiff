models
appsi20151012Model
	^ appsi20151012Model ifNil: [ appsi20151012Model := FLMaterializer materializeFromFileNamed: (self mseDirectory / 'appsi20151012.fuel') pathString ]