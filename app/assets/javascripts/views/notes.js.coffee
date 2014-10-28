class App.Views.Notes extends Backbone.View
	# This view uses collection: AllNotes
	# 'notes/index' path to the template file in templates/notes/index.jst.eco
	template: JST['notes/index'] 
 
	events: 
		'click a': 'showNote'

	render: ->
		@$el.html @template(notes: @collection)

		# all backbone render functions return this
		this

	# if we use ->, Backbone still assumes that this is App and not the link you clicked (like in jQuery)
	showNote: (e) ->
		# let's introduce $this representing the link clicked
		$this = $(e.currentTarget)
		url = $this.attr("href")

		# when you go do the url, Backbone does not trigger routing automatically 
		# pass second parameter: trigger: true, just to do that
		# it triggers routing, ie the showNote route function will get triggered, still Rails does not reload the page
		Backbone.history.navigate(url, trigger: true)

		# either preventDefault or return false so that rails does not reload the page
		false

