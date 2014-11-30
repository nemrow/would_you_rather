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
    upVoteRound: ->
      $.post( "/vote_up", { round_id: @get('randomCard').get('id') })
      @set('randomIndex', @getRandomIndex())

    downVoteRound: ->
      $.post( "/vote_down", { round_id: @get('randomCard').get('id') })
      @set('randomIndex', @getRandomIndex())
  }
