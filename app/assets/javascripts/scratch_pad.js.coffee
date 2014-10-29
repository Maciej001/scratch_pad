# assets/javascript/scratch_pad.js.coffee
#
# Main App file

window.ScratchPad =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}
	initialize: ->
		@AllNotes = new @Collections.Notes

		# done is a callback function, so Router is created only 
		# after collection is created 
		# we are using => instead of -> as this changes the meaning here
		# and we still want to address @Routers
		# make sure that you display data only after we fetched the data
		# and populated the collection
		@AllNotes.fetch().done =>
			new @Routers.ScratchPadRouter
			Backbone.history.start(pushState: true)

window.App = window.ScratchPad

# Initialize application when document loads
$ ->
	App.initialize() 