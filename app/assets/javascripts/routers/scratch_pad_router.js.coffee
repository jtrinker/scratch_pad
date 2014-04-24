class App.Routers.ScratchPadRouter extends Backbone.Router
# extends Backbone.Router pulls everything on the Backbone.Router prototype and puts
# in the prototype of our class.
# regular js: App.Routers.ScratchPadRouter = Backbone.Router.extend
	routes:
		'': 'index'
		'notes/:id': 'showNote'

	index: ->
		view = new App.Views.Notes(collection: App.AllNotes)
		$('#container').html(view.render().el)

	showNote: (id) ->
		# coming from scratch_pad.js this.AllNotes array
		model = App.AllNotes[id - 1]
		view = new App.Views.EditNote(model: model)
		$('#container').html(view.render().el)