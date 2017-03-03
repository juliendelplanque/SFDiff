models
model1B
	"Renamed m3 as m4."
	| model class1 class2 |
	model := MooseModel new.
	class1 := FAMIXClass new
					name: 'C1';
					mooseModel: model;
					yourself.
	class1 addMethod: (FAMIXMethod new
								name: 'm1';
								signature: 'm1';
								mooseModel: model;
								yourself).
	class1 addAttribute: (FAMIXAttribute new
									name: 'att1';
									mooseModel: model;
									yourself).
	class2 := FAMIXClass new
					name: 'C2';
					mooseModel: model;
					yourself.
	class2 addMethod: (FAMIXMethod new
								name: 'm2';
								signature: 'm2';
								mooseModel: model;
								yourself).
	class2 addMethod: (FAMIXMethod new
								name: 'm4';
								signature: 'm4:';
								addParameter: (FAMIXParameter new name: 'arg1'; mooseModel: model; yourself);
								mooseModel: model;
								yourself).
	^ model