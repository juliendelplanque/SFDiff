running
createModelWith: somePackages 
	| importer |
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass. 
	importer candidateClass: CandidateListOperator.
	importer importerClass: SmalltalkImporter.
	importer model: MooseModel new; addFromPackagesNamed: somePackages; run.
	^ importer model.
