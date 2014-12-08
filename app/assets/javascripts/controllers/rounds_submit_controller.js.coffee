WouldYouRather.RoundsSubmitController = Ember.Controller.extend
  actions:
    submit: ->
      @get('model').save().then =>
        $('.modal').modal('hide')

    close: ->
      @transitionToRoute("application")

