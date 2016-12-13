gt inspector
gtNotDetectedItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	(self notDetected asArray gtInspectorItemsIn: composite)
		title: ('NotDetected ({1})' format: {self notDetected size})