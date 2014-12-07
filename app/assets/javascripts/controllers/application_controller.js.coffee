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

  actions:
    upVoteRound: (id) ->
      $.post( "/vote_up.id", { round_id: id })
      @set('randomIndex', @getRandomIndex())

    downVoteRound: (id) ->
      $.post( "/vote_down", { round_id: id })
      @set('randomIndex', @getRandomIndex())