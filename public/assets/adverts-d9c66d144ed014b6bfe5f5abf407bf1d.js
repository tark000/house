(function() {
  jQuery(function() {});

  $('form').on('click', '.remove_fields', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('fieldset').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;

    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });

  jQuery(function() {
    var cities;

    cities = $('#advert_city_id').html;
    return $('#advert_region_id').change(function() {
      var options, region;

      region = $('#advert_region_id :selected').text();
      options = $(cities).filter("optgroup[label='" + region + "']").html();
      options = $(cities).filter("optgroup[label='" + region + "']").html();
      if (options) {
        return $('#advert_city_id').html(options);
      } else {
        return $('#advert_city_id').empty();
      }
    });
  });

}).call(this);
