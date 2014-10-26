class App.Views.Notes extends Backbone.View

	# 'notes/index' path to the template file in templates/notes/index.jst.eco
	template: JST['notes/index'] 

	render: ->
		@$el.html @template(name: 'World')

		# all backbone render functions return this
		this