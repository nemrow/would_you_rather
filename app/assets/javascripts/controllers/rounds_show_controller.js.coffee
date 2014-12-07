WouldYouRather.RoundsShowController = Ember.Controller.extend
  actions:
    close: ->
      @transitionToRoute("application")
