class App.Views.Notes extends Backbone.View
	template: JST['notes/index']

	# allows us to bind to events
	events:
		'click a': 'showNote'

	render: ->
		# means $(this.el) -- this.el in Backbone refers to the element on the page, the DOM element.
		@$el.html(@template(notes: @collection))
		this 

	showNote: (e) ->
		# grabs the url of the linked element that was clicked
		$this = $(e.currentTarget)
		url = $this.attr("href")
		# trigger:true - weirdly bb doesn't trigger routing when navigating to a url, so we must include that
		Backbone.history.navigate(url, trigger: true)
		# must call e.preventDefault or return false to prevent normal clicking behavior
		false