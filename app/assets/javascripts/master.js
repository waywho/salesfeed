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
});