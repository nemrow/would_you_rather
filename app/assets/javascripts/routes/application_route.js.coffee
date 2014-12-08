WouldYouRather.ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find('round', {random: true})

  setupController: (controller, model) ->
    controller.set('model', model)
