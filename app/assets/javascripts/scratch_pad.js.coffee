# assets/javascript/scratch_pad.js.coffee
#
# Main App file

window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		@AllNotes = [
			new @Models.Note ( id: 1, title: "The first note.", content: "I am the first note") 
			new @Models.Note ( id: 2, title: "The second note.", content: "" )
			new @Models.Note ( id: 3, title: "The third note.", content: "I am last note" )
		]
		new @Routers.ScratchPadRouter
		Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$ ->
	App.initialize() 