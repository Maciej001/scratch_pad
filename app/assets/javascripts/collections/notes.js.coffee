class App.Collections.Notes extends Backbone.Collection 
	# from /notes url the collection is filled with notes from database
	url: '/notes'
	model: App.Models.Note

