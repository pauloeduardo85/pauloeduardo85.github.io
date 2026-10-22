(function(root) {
	'use strict';
	var audit = {
	    "role": "user",
	    "doc": "Regular user.",
	    "access": [
		{ "name": "user",
		  "access": {
			"exportable": true,
			"data": [
				"hash",
				"email",
				"name",
				"uid"
			],
			"accessfrom": [
				{ "function": "db_user_get_uid",
				  "exporting": true,
				  "path": [] }
			],
			"insert": null,
			"updates": [
				"db_user_update_hash",
				"db_user_update_email" ],
			"deletes": [],
			"iterates": [],
			"lists": [],
			"searches": [
				"db_user_get_uid" ]
		}},
		{ "name": "session",
		  "access": {
			"insert": "db_session_insert",
			"updates": [],
			"deletes": [
				"db_session_delete_id" ],
			"iterates": [],
			"lists": [],
			"searches": []
		}}
	],
	"functions": {
		"db_user_get_uid": {
			"doc": "Lookup by unique identifier.",
			"type": "search" },
		"db_user_update_hash": {
			"doc": "User updating their password.",
			"type": "update" },
		"db_user_update_email": {
			"doc": "User updating unique e-mail.",
			"type": "update" },
		"db_session_delete_id": {
			"doc": "Delete by identifier.",
			"type": "delete" },
		"db_session_insert": {
			"doc": null,
			"type": "insert" }
	},
	"fields": {

		"user.hash": {
			"export": false,
			"doc": "Password hash.\nThis is passed to inserts and updates as a password,\nthen hashed within the implementation and extracted\n(in listings and searches) as the hash value." },
		"user.email": {
			"export": true,
			"doc": "Unique e-mail address." },
		"user.name": {
			"export": true,
			"doc": "User's full name." },
		"user.uid": {
			"export": false,
			"doc": null }
	}};

	root.audit = audit;
})(this);
