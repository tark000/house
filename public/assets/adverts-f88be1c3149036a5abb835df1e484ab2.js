!function(){jQuery(function(){}),$("form").on("click",".remove_fields",function(e){return $(this).prev("input[type=hidden]").val("1"),$(this).closest("fieldset").hide(),e.preventDefault()}),$("form").on("click",".add_fields",function(e){var t,i;return i=(new Date).getTime(),t=new RegExp($(this).data("id"),"g"),$(this).before($(this).data("fields").replace(t,i)),e.preventDefault()}),jQuery(function(){var e;return e=$("#advert_city_id").html,$("#advert_region_id").change(function(){var t,i;return i=$("#advert_region_id :selected").text(),t=$(e).filter("optgroup[label='"+i+"']").html(),t=$(e).filter("optgroup[label='"+i+"']").html(),t?$("#advert_city_id").html(t):$("#advert_city_id").empty()})})}.call(this);