evaluation
evaluateOnWikiMedia
	self flag: #todo.
	^ self sfDiffEvaluateOnSQLFor: self wikimedia170Model and: self wikimedia180Model with: #()