# assets/javascript/scratch_pad.js.coffee
#
# Main App file

window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		new @Routers.ScratchPadRouter
		Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$ ->
	App.initialize() 


		# @AllNotes = [
		# 	{ id: 1, title: "The first note.", content: "I am  note" }
		# 	{ id: 2, title: "The second note.", content: "" }
		# 	{ id: 3, title: "The third note.", content: "I am last note" }
		# ]