# For more information see: http://emberjs.com/guides/routing/

WouldYouRather.Router.map ()->
  @route 'rounds', path: '/'

WouldYouRather.Router.reopen
  location: 'history'


