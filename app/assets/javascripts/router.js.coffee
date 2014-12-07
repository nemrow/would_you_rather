# For more information see: http://emberjs.com/guides/routing/

WouldYouRather.Router.map ()->
  @resource 'rounds', path: '/', ->
    @route 'show', path: 'round/:id'


