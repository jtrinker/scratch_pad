window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	alert('Hello from Backbone!')

window.app = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
