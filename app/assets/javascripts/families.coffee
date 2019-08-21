# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

showAdmin = (items, button) ->
  items.forEach((item) ->
    item.classList.remove 'none'
  )

startListening = ->
  clickCount = 0
  adminItems = document.querySelectorAll('.admin')
  adminButton = document.getElementById('admin-button')
  adminButton.addEventListener 'click', _clicker = () ->
    clickCount++
    showAdmin(adminItems, adminButton) if clickCount > 9
    adminButton.removeEventListener 'click', _clicker if clickCount > 9

document.addEventListener 'turbolinks:load', () ->
  if location.pathname is '/' or location.pathname is '/families'
    startListening()