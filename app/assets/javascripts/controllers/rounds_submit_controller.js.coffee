WouldYouRather.RoundsSubmitController = Ember.Controller.extend
  actions:
    submit: ->
      @get('model').save()
      @disconnectOutlet
        outlet: 'modal',
        parentView: 'application'
      @transitionToRoute("application")

    close: ->
      @transitionToRoute("application")

