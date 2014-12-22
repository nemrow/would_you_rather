WouldYouRather.RoundsSubmitController = Ember.Controller.extend
  actions:
    submit: ->
      if @get('model.scenerio_1') == undefined or @get('model.scenerio_1').length < 4 or @get('model.scenerio_1').length > 140
        return swal "Your first scenerio must be between 3 and 140 characters."
      if @get('model.scenerio_2') == undefined or @get('model.scenerio_2').length < 4 or @get('model.scenerio_2').length > 140
        return swal "Your second scenerio must be between 3 and 140 characters."

      @get('model').save().then =>
        swal "Fuck yeah. We'll let you know if it gets chosen!"
        $('.modal').modal('hide')

    close: ->
      @transitionToRoute("application")
