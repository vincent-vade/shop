$('select.my_filter').on 'change', ->
  $(this).parents('form').submit()