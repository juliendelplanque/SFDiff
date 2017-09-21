selecting
filterMappingsIn: mappings incoherentWithAcceptedMapping: match
	"Removes the mapping in #mappings that have either their baseEntity or targetEntity
	 identical to #match's one."
	^ mappings reject: [ :each | 
			(self baseEntityOf: each) = (self baseEntityOf: match)
				or: [ (self targetEntityOf: each) = (self targetEntityOf: match) ] ]