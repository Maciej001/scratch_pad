class App.Models.Note extends Backbone.Model

	# defines root url for the model, so you can use from eg. templates
	# href = "#{ note.url }"
	urlRoot: '/notes'