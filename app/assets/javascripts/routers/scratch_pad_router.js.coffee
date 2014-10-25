# assets/javascripts/routers/scratch_pad_router.js.coffee
#
# routes is a hash build of key, value pairs
# value is either anonymous function or the name of the method
class App.Routers.ScratchPadRouter extends Backbone.Router
	routes: {
		'': 'index'
		'/notes/id': 'showNote'
	}

	index: ->
		alert("index view")
		
	showNote: (id) ->
		alert("new note")
		alert("You requested the note with the id of #{id}")
