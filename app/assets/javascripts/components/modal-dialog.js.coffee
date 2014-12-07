WouldYouRather.ModalDialogComponent = Ember.Component.extend
  didInsertElement: ->
    @$('.modal').modal()
