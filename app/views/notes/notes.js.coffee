class App.Views.Notes extends Backbone.View
	template: _.template("<div>Hello, <%= name %></div>")


	render: ->
		@$el.html(@template(name: 'world'))
		this

