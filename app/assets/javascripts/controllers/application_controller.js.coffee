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
      @set('randomIndex', @getRandomIndex())

    submitEmail: ->
      unless @validateEmail(@get('emailAddress'))
        return swal "Thats not a real email address. Who do you think we are???"
      $.post( "/email_address", { emailAddress: @get('emailAddress') }).success =>
        swal("Thanks!!")
        @set("emailAddress", "")

  validateEmail: (email) ->
    re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    re.test(email)
