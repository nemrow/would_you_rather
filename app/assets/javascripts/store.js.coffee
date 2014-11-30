# http://emberjs.com/guides/models/#toc_store
# http://emberjs.com/guides/models/pushing-records-into-the-store/

WouldYouRather.ApplicationStore = DS.Store.extend({

})

# Override the default adapter with the `DS.ActiveModelAdapter` which
# is built to work nicely with the ActiveModel::Serializers gem.
WouldYouRather.ApplicationAdapter = DS.ActiveModelAdapter.extend({

})

$(->
  token = $('meta[name="csrf-token"]').attr('content')
  $.ajaxPrefilter((options, originalOptions, xhr)->
    xhr.setRequestHeader('X-CSRF-Token', token)
  )
)
