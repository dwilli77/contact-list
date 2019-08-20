# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener 'DOMContentLoaded', () -> 
  clickCount = 0
  adminItems = document.querySelectorAll('.admin')
  adminButton = document.getElementById('admin-button')
  adminButton.addEventListener 'click', () ->
    clickCount++
    console.log(clickCount)
    showAdmin() if clickCount > 9

  showAdmin = ->
    adminItems.forEach((item) ->
      item.classList.remove 'none'
    )
