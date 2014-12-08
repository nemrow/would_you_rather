WouldYouRather.RoundsRoute = Ember.Route.extend
  model: ->
    @store.find('round', {top_rated: true})

  setupController: (controller, model) ->
    controller.set('model', model)

