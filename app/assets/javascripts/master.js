$(document).ready(function() {
    $(".more-click").click(function() {
      var link = $(this);
      var message = $(this).siblings(".message")
      $(message).toggle("fast", function() {
        if ($(this).is(':visible')) {
          link.text('Show Less');
        } else {
          link.text('Show More');
        }
      });
    });
    $('.deal_image').error(function() {
      $(this).attr('src', '/assets/deal_image_holder.png');
    });

    $('.gender-type').change(function() {
      selection = $(this).val();
      genderInput = $(this);
      request_path = $(this).data('url');
      genderInput.parent().parent().parent().parent().next().children().children().children().children('.subcategory-options').empty().append('<option value=""></option>');
      console.log(request_path + "/" + selection);
      $.ajax({
        type: 'GET',
        url: request_path,
        dataType: "text",
        data: "gender=" + selection
      }).done(function(data) {
        console.log(genderInput.parent().parent().parent().parent().next().children().children().children().children('.subcategory-options').val());
        $.each(JSON.parse(data), function(index, element) {
            genderInput.parent().parent().parent().parent().next().children().children().children().children('.subcategory-options').append($('<option>', {
              value: parseInt(element.id),
              text: element.name
            }));            
        })
      })
    });
});