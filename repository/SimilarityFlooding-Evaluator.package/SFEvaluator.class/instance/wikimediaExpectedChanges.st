expected changes
wikimediaExpectedChanges
	^ { 
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXSQLFunction and: [ e name = 'page_deleted' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTrigger and: [ e name = 'page_deleted' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'mwuser' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_id' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_name' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_real_name' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_password' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_newpassword' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_token' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_token' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_token_expires' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_authenticated' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_options' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_touched' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_registration' and: [ e ownerTable name = 'mwuser' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'mediawiki_version' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'type' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'mw_version' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'notes' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pg_version' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pg_dbname' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pg_user' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pg_port' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'mw_schema' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ts2_schema' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ctype' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'sql_version' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'sql_date' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'cdate' and: [ e ownerTable name = 'mediawiki_version' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'pagecontent' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_id' and: [ e ownerTable name = 'pagecontent' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_text' and: [ e ownerTable name = 'pagecontent' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_flags' and: [ e ownerTable name = 'pagecontent' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'textvector' and: [ e ownerTable name = 'pagecontent' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'profiling' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pf_count' and: [ e ownerTable name = 'profiling' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pf_time' and: [ e ownerTable name = 'profiling' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pf_name' and: [ e ownerTable name = 'profiling' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'pf_server' and: [ e ownerTable name = 'profiling' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'archive2' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_namespace' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_title' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_comment' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user_text' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_timestamp' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_minor_edit' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_flags' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_rev_id' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text_id' and: [ e ownerTable name = 'archive2' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'archive' ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_namespace' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_title' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_comment' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user_text' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_timestamp' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_minor_edit' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_flags' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_rev_id' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text_id' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'user' ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_id' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_name' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_real_name' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_password' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_newpassword' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_token' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_token' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_token_expires' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_email_authenticated' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_options' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_touched' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'user_registration' and: [ e ownerTable name = 'user' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXTable and: [ e name = 'text' ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_id' and: [ e ownerTable name = 'text' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_text' and: [ e ownerTable name = 'text' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'old_flags' and: [ e ownerTable name = 'text' ] ] ]);
		yourself.
	FamixRemovalChange new
		entity: (self wikimedia170Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'textvector' and: [ e ownerTable name = 'text' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXView and: [ e name = 'archive' ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_namespace' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_title' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_comment' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_user_text' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_minor_edit' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_flags' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_rev_id' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_text_id' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ar_timestamp' and: [ e ownerTable name = 'archive' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ipb_anon_only' and: [ e ownerTable name = 'ipblocks' ] ] ]);
		yourself.
	FamixAddChange new
		entity: (self wikimedia180Model entities detect: [ :e | e class = FAMIXColumn and: [ e name = 'ipb_create_account' and: [ e ownerTable name = 'ipblocks' ] ] ]);
		yourself. }