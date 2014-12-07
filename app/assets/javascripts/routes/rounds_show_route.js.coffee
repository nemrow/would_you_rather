WouldYouRather.RoundsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find('round', params.id)

  renderTemplate: ->
    @render 'single-round-modal',
      into: 'application'
      outlet: 'modal'
