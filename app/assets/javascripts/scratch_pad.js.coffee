window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 


# save to app variable
window.app = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
