class App.Models.Note extends Backbone.Model
	# this assumes that you have an id and that you want the url to be /notes/:id
	# this is default, but we can build up the url to whatever we want.
	urlRoot: '/notes'