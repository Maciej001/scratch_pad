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
		Backbone.history.start( pushState: true )

window.App = window.ScratchPad

$ ->
	ScratchPad.initialize() 


