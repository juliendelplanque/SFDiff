gt inspector
gtActualChangesItemsIn: composite
	<gtInspectorPresentationOrder: 3>
	(self actualChanges asArray gtInspectorItemsIn: composite)
		title: ('Actual changes ({1})' format: {self actualChanges size})