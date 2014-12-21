WouldYouRather.RoundsShowController = Ember.Controller.extend
  actions:
    close: ->
      @transitionToRoute("application")

    upVoteRound: (round) ->
      $.post( "/vote_up.id", { round_id: round.id }).done (response) ->
        console.log response.success
        if response.success
          round.set("score", round.get('score') + 1)
        else
          alert "You already voted for that one. Don't be an A-Hole."

        $('.modal').modal('hide')

    downVoteRound: (round) ->
      $('.modal').modal('hide')

