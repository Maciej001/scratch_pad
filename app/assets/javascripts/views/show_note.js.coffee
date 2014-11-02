class App.Views.ShowNote extends Backbone.View
	template: JST['notes/show']

	className: 'note'

	events: 
		'change': 'save'
		'keydown .note-title': 'blurIfEnter'
		'focus .note-title, .note-content': 'beginEditing'
		'blur .note-title, .note-content': 'endEditing'
		'click .destroy-note': 'destroyNote'

	initialize: ->
		@listenTo(@model, "invalid", @addError)
		@listenTo(@model, "error", @addError)

	render: ->
		@$el.html( @template(note: @model) )
		this   

	save: ->
		@model.set 
			title: @$('.note-title').val()
			content: @$('.note-content').val()

		@model.save()
		false

	blurIfEnter: (e) ->
		if e.keyCode == 13 
			@$(':input').blur()

	beginEditing: ->
		@$el.addClass('editing')
		@$el.removeClass("error")

	endEditing: ->
		@$el.removeClass('editing')

	destroyNote: =>
		@model.destroy()
		@remove()
		false

	addError: =>
		@$el.addClass("error")
		console.log("error...")
