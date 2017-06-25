# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Configure infinite table
  $('#feed-column').infinitePages
    # debug: true
    loading: ->
      $(".pagination").text('Loading next page...')
    error: ->
      $(".pagination").button('There was an error, please try again')