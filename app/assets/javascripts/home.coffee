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

# If not iPhone, play first video and setup event handlers for  carousel rotations
# iPhone will not play videos inline, and will take control of the browser
if !/iPhone/i.test(navigator.userAgent)
  $('.active > div > video').get(0).play()
  $('#carousel').bind 'slide.bs.carousel', (e) ->
    $(e.relatedTarget).find('video').get(0).play()
    return
  $('#carousel').bind 'slid.bs.carousel', (e) ->
    $('video').not('.active > div > video').each ->
      $(this).get(0).pause()
      return
    return
