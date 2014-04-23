class App.Routers.ScratchPadRouter extends Backbone.Router
# extends Backbone.Router pulls everything on the Backbone.Router prototype and puts
# in the prototype of our class.
# regular js: App.Routers.ScratchPadRouter = Backbone.Router.extend
	routes:
		'': 'index'
		'notes/:id': 'showNote'

	index: ->
		alert("You requested the index page")

	showNote: (id) ->
		alert("You requested the note with the id of #{id}")