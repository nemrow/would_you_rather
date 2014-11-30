WouldYouRather.ApplicationController = Ember.Controller.extend
  randomCard: (->
    @get('model').objectAt(@get("randomIndex"))
  ).property('randomCard', 'randomIndex')

  randomIndex: (->
    @getRandomIndex()
  ).property('randomIndex')

  getRandomIndex: ->
    length = parseInt(@get('model').get('length'))
    parseInt((Math.random() * length).toFixed())

  actions: {
    addToGame: ->
      @set('randomIndex', @getRandomIndex())
  }
