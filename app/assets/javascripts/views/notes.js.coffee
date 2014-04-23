class App.Views.Notes extends Backbone.View
	template: JST['notes/index']
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
		Backbone.history.navigate(url)
		false