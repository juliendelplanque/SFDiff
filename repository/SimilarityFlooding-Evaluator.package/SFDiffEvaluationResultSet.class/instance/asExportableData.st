converting
asExportableData
	^ #(#('Diff'
'Project'
'Computation time'
'Actual changes'
'Expected changes'
'Not detected'
'False positives'
'Precision'
'Recall')),(self results collect: #asExportableData)