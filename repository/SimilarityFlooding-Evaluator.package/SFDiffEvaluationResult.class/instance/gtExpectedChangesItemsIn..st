gt inspector
gtExpectedChangesItemsIn: composite
	<gtInspectorPresentationOrder: 4>
	(self expectedChanges asArray gtInspectorItemsIn: composite)
		title: ('Expected changes ({1})' format: {self expectedChanges size})