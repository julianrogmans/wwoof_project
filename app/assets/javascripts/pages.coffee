# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


displayNextCallout = ->
  callouts = document.querySelectorAll('.map-callout')
  for callout, index in callouts
    setTimeout(animateElement, index*5000, callout)

animateElement = (element) ->
  element.className = 'map-callout animated fadeInUpBig'

document.addEventListener 'turbolinks:load', ->
  displayNextCallout()
