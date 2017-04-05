testing
shouldDoSFDiff: matches
	"Test if the pre-process is not enough for the diff (for example if there are only adds or remove)."
	^ (matches size = (self baseModel allWithSubTypesOf: FAMIXNamedEntity) size
			or: [ matches size = (self targetModel allWithSubTypesOf: FAMIXNamedEntity) size ]) not