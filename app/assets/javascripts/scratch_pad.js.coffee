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
			# models don't know anything about your database structure,
			# they just accept hash of attributes and render them for you 
			new @Models.Note ( id: 1, title: "The first note.", content: "I am the first note") 
			new @Models.Note ( id: 2, title: "The second note.", content: "" )
			new @Models.Note ( id: 3, title: "The third note.", content: "I am last note" )
		]
		new @Routers.ScratchPadRouter
		Backbone.history.start(pushState: true)

window.App = window.ScratchPad

# Initialize application when document loads
$ ->
	App.initialize() 