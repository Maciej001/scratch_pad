# assets/javascripts/routers/scratch_pad_router.js.coffee
#
# routes is a hash build of key, value pairs
# value is either anonymous function or the name of the method
class App.Routers.ScratchPadRouter extends Backbone.Router
	routes: {
		'': 'index'
		'notes/:id': 'showNote'
	}

	index: ->
		# index view is created and the collection of notes is passed
		# you can refer later in Notes view to @collection as AllNotes
		view = new App.Views.Notes collection: App.AllNotes

		# view is rendered in #container
		$("#container").html(view.render().el)

	showNote: (id) ->
		# when note gets clicked on Index page we just grab it in model and pass to the view
		# we can pass either model or collection

		# as AllNotes is now a collection we cannot longer access it as if it were an array
		# model = App.AllNotes[ id - 1 ]

		model = App.AllNotes.get(id)
		view = new App.Views.EditNote( model: model )

		# render the view
		$("#container").html(view.render().el)

		console.log "You requested the note with the id of #{id}" 
