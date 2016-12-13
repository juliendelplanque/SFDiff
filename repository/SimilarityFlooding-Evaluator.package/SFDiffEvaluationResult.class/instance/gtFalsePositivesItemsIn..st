gt inspector
gtFalsePositivesItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	(self falsePositives asArray gtInspectorItemsIn: composite)
		title: ('False positives ({1})' format: {self falsePositives size})