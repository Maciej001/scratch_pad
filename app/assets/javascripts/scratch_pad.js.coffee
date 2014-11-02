# assets/javascript/scratch_pad.js.coffee
#
# Main App file

window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		# @AllNotes = new @Collections.Notes
		# @AllNotes.fetch().done =>
		@AllNotes = new @Collections.Notes(@notesJson)
		# new @Routers.ScratchPadRouter
		# Backbone.history.start(pushState: true)
		view = new @Views.Notes collection: @AllNotes
		$("#container").html(view.render().el)
window.App = window.ScratchPad

# Initialize application when document loads
$ ->
	App.initialize() 