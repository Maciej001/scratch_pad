class  App.Views.EditNote extends Backbone.View
	template: JST['notes/edit']

	tagName: 'form'

	events: 
		'submit': 'saveModel'

	render: ->
		@$el.html @template(note: @model)
		this

	saveModel: (e) ->
		# @model.set
		# as we adder rails controller and possibility to persist data in database
		# you  should use

		# when you use save in below form it sends the PUT request and not PATCH
		# if you chose to use PATCH  you could use
		# @model.save({
		# 	title: 		@$('.note-title').val()
		# 	content: 	@$('.note-content').val()
		# }, patch: true)	

		# however it saves only explicitly enumerated fields, and those, set earlier using set
		# will not get saved

		@model.save
			title: 		@$('.note-title').val()
			content: 	@$('.note-content').val()
			
		Backbone.history.navigate('/', trigger: true)

		# to prevent default behaviour
		false