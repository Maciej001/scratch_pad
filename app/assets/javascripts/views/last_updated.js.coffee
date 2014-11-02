class App.Views.LastUpdated extends Backbone.View

	initialize: -> 
		@listenTo( @model, 'change', @render)

	render: => 
		console.log 'cos sie zmienilo'
		@$el.html( @lastUpdated() )
		this

	lastUpdated: -> moment( @model.get("updated_at") ).calendar()
