# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(window).scroll ->
  $('#animatedElement').each ->
    imagePos = $(this).offset().top
    topOfWindow = $(window).scrollTop()
    if imagePos < topOfWindow + 400
      $(this).addClass 'slideUp'
    return
  return