WouldYouRather.ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find('round')

  setupController: (controller, model) ->
    controller.set('model', model)

  actions:
    openSingleRound: ->
      # @controllerFor('single-round-modal').set('model', @get('model'));
      @render 'single-round-modal',
        into: 'application'
        outlet: 'modal'

    closeSingleRound: ->
      @disconnectOutlet
        outlet: 'modal'
        parentView: 'application'

