class App.Views.Notes extends Backbone.View
	# This view uses collection: AllNotes
	# 'notes/index' path to the template file in templates/notes/index.jst.eco
	template: JST['notes/index'] 

	initialize: -> 
		@addActions = new App.Views.AddActions collection: @collection

	render: ->
		@$el.html @template()
		@collection.forEach(@renderNote)
		@$el.prepend( @addActions.render().el )
		this

	renderNote: (note) =>
		# when creating an instance of the view let's pass tagName as additinoal parameter
		view = new App.Views.ShowNote model: note, tagName: 'li'
		@$('.notes').append( view.render().el )



