WouldYouRather.ModalDialogComponent = Ember.Component.extend
  didInsertElement: ->
    @$('.modal').modal().on('hidden.bs.modal', =>
      @disconnectOutlet
        outlet: 'modal',
        parentView: 'application'
      @sendAction('close')
    )
