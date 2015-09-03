# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https:#github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
# = require jquery
# = require jquery_ujs
# = require foundation
# = require social-share-button
# = require_tree .

$ ->
  $(document).foundation()

  $('.social-share-button-twitter').click ->
    analytics.track("share/twitter")

  $('.social-share-button-facebook').click ->
    analytics.track("share/facebook")

  $('.social-share-button-email').click ->
    analytics.track("share/email")

  window.onYouTubeIframeAPIReady = ->
    makePlayer('hGHnEUDlsvw', 'monica')
    makePlayer('Hh7cbTmYrwI', 'wallace')
    makePlayer('ehQltJJehNs', 'nathalia')
    makePlayer('00q71VOOu2s', 'lorne')

  makePlayer = (videoId, person) ->
    new (YT.Player)("#{person}_player",
      height: '315'
      width: '420'
      videoId: videoId
      events:
        'onStateChange': onPlayerStateChange
    )

  onPlayerStateChange = (event) ->
    if event.data == YT.PlayerState.PLAYING
      analytics.track("video/play/#{event.target.f.id}")


  monica_player = undefined
  wallace_player = undefined