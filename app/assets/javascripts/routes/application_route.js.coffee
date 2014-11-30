WouldYouRather.ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find('round')

  setupController: (controller, model) ->
    controller.set('model', model)

