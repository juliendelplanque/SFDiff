selecting
marriagesForCandidates: matchCandidates
	| solver men women menContenders i womenContenders |
	matchCandidates ifEmpty: [ ^ #() ].
	solver := SMSolver new.
	men := Dictionary new.
	women := Dictionary new.
	matchCandidates do: [ :match |
		|baseEntity targetEntity|
		baseEntity := match baseEntity versionIn: sfDiff baseModel.
		targetEntity := match targetEntity versionIn: sfDiff targetModel.
		(men
			at: baseEntity
			ifAbsentPut: [ 
				{ SMContender new data: baseEntity; yourself.
				OrderedCollection new } ]) second
			add: match.
		(women
			at: targetEntity
			ifAbsentPut: [ 
				{ SMContender new data: targetEntity; yourself.
				OrderedCollection new } ]) second
			add: match ].
	menContenders := Array new: men size.
	i := 1.
	men keysAndValuesDo: [ :entity :data |
		menContenders
			at: i
			put: (
				data first
					preferences: ((data second sorted: [ :a :b |
						|max|
						max := data second maxValue: #sigmaValue.
						(max / a sigmaValue) < (max / b sigmaValue) ]) collect: [ :e | (women at: (e targetEntity versionIn: sfDiff targetModel)) first ]);
					yourself).
		i := i + 1 ].
	womenContenders := Array new: women size.
	i := 1.
	women keysAndValuesDo: [ :entity :data |
		womenContenders
			at: i
			put: (
				data first
					preferences: ((data second sorted: [ :a :b |
						|max|
						max := data second maxValue: #sigmaValue.
						(max / a sigmaValue) < (max / b sigmaValue) ]) collect: [ :e | (men at: (e baseEntity versionIn: sfDiff baseModel)) first ]);
					yourself).
		i := i + 1 ].
	
	solver
		men: menContenders;
		women: womenContenders;
		stableMatching.

	^ solver marriages