models
wikimedia170Model
	^ wikimedia170Model ifNil: [ wikimedia170Model := FLMaterializer materializeFromFileNamed: (self mseDirectory / 'wikimedia-tables-1.7.0.fuel') pathString ]