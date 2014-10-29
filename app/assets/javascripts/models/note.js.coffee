class App.Models.Note extends Backbone.Model

	# defines root url for the model, so you can use from eg. templates
	# href = "#{ note.url }"
	# we can ommit below line as it's defined in the collection now
	# urlRoot: '/notes'