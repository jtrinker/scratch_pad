class App.Views.Notes extends Backbone.View
	template: JST['notes/index']

	render: ->
		# means $(this.el) -- this.el in Backbone refers to the element on the page, the DOM element.
		@$el.html(@template(name:"world"))
		this 