WouldYouRather.RoundsSubmitController = Ember.Controller.extend
  actions:
    submit: ->
      @get('model').save().then =>
        swal "Fuck yeah. We'll let you know if it gets chosen!"
        $('.modal').modal('hide')

    close: ->
      @transitionToRoute("application")

