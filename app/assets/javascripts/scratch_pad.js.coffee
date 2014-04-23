window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new @Routers.ScratchPadRouter
  	Backbone.history.start(pushState: true) # pushStste: true alloews us to not use the hash segment

# save to app variable
window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
