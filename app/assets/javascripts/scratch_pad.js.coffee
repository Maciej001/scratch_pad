# assets/javascript/scratch_pad.js.coffee
#
# Main App file

window.App =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		@AllNotes = [
			{ id: 1, title: "The first note.", content: "I am  note" }
			{ id: 2, title: "The second note.", content: "" }
			{ id: 3, title: "The third note.", content: "I am last note" }
		]
		new @Routers.ScratchPadRouter
		Backbone.history.start( pushState: true )

$ ->
	App.initialize() 


