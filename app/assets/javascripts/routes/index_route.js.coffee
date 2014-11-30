WouldYouRather.RoundsRoute = Ember.Route.extend
  model: ->
    @store.find('round')
