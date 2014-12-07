WouldYouRather.RoundsShowController = Ember.Controller.extend
  actions:
    close: ->
      @transitionToRoute("application")

    upVoteRound: (round) ->
      round.set("score", round.get('score') + 1)
      $.post( "/vote_up.id", { round_id: round.id })

    downVoteRound: (round) ->
      round.set("score", round.get('score') - 1)
      $.post( "/vote_down", { round_id: round.id })

