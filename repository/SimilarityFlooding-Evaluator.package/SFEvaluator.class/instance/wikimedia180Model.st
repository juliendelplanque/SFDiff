models
wikimedia180Model
	^ wikimedia180Model ifNil: [ wikimedia180Model := FLMaterializer materializeFromFileNamed: (self mseDirectory / 'wikimedia-tables-1.8.0.fuel') pathString ]