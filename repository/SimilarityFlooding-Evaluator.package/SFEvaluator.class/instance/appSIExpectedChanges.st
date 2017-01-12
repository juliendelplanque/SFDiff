expected changes
appSIExpectedChanges
	^ { 
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'personne' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'personne' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXTable and: [ e name = 's_users_membres' ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_id' and: [ e belongsTo name = 's_users_membres' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_name' and: [ e belongsTo name = 's_users_membres' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_password' and: [ e belongsTo name = 's_users_membres' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_contrats_doctoraux' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_contrats_doctoraux' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_enseignements' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_enseignements' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_it_permanents' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_it_permanents' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_liste_doctorants' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_liste_doctorants' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXView and: [ e name = 'vue_support_le_plus_ancien' ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'cle_personne' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'min' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'clesupport' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXView and: [ e name = 'vue_liste_personnel_affectations' ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'clepersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'datearrivee' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'sexe' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nompersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'prenompersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'datenaissance' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'paysorigine' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomcategorie' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'corps' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'cletypesupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'typedusupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'numsection' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'numcmu' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'debutsupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'finsupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomequipe' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'debutaffectation' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'finaffectation' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'repartition' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomemployeur' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomenseignement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself. 
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'typefinancement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'financeurs' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'reffinancement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self appsi20151012Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'responsablethese' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	"--"
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXTable and: [ e name = 'vue_liste_personnel_affectations' ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'clepersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'datearrivee' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'sexe' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nompersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'prenompersonne' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'datenaissance' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'paysorigine' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomcategorie' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'corps' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'cletypesupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'typedusupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'numsection' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'numcmu' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'debutsupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'finsupport' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomequipe' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'debutaffectation' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'finaffectation' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'repartition' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomemployeur' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'nomenseignement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself. 
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'typefinancement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'financeurs' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'reffinancement' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'responsablethese' and: [ e belongsTo name = 'vue_liste_personnel_affectations' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_membres_associes' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_membres_associes' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tnom' and: [ e belongsTo name = 'vue_personnel_recherche_permanents' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'tprenom' and: [ e belongsTo name = 'vue_personnel_recherche_permanents' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXView and: [ e name = 'vue_support_le_plus_ancien' ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'cle_personne' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'min' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self appsi20151119Model detect: [ :e | e class = FAMIXColumn and: [ e name = 'clesupport' and: [ e belongsTo name = 'vue_support_le_plus_ancien' ] ] ]);
		yourself. }