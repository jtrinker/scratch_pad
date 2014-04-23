window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	@AllNotes = [
  		{ id: 1, title: "The first note", content: "I am a note!" }
			{ id: 2, title: "This is very important.", content: "Don't forget to save the world!" }
			{ id: 3, title: "This is not important.", content: "Go make a BM!" }
  	]
  	new @Routers.ScratchPadRouter
  	Backbone.history.start(pushState: true) # pushStste: true alloews us to not use the hash segment

# save to app variable
window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
