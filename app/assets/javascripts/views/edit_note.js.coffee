class App.Views.EditNote extends Backbone.View
	template: JST['notes/edit']

	# if we don't pass an element to the view constructor bb will create a new element for us
	# and by default it will be a div, but we want to be a form instead of a div
	tagName: 'form'

	events:
		'submit': 'saveModel'

	render: ->
		@$el.html(@template(note: @model))
		this

	saveModel: (e) ->
		# whenever we access a models attr we must go through either get or set
		@model.set
			title: @$('.note-title').val()
			content: @$('.note-content').val()
		Backbone.history.navigate('/', trigger: true)
		false