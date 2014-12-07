WouldYouRather.RoundsSubmitRoute = Ember.Route.extend
  model: ->
    @store.createRecord('round')

  setupController: (controller, model) ->
    controller.set('model', model)

  renderTemplate: ->
    @render 'submit-modal',
      into: 'application'
      outlet: 'modal'
