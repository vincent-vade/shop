$('select.filter').on('change', function() {
  return $(this).parents('form').submit();
});