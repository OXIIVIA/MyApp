$(document).on('turbolinks:load', function() {

  $('.fa-user').on('click', function() {
    $('#default-menu').css("display", "none")
    $('#user-menu').css("display", "block")
  });

  $('.fa-times').on('click', function() {
    $('#default-menu').css("display", "block")
    $('#user-menu').css("display", "none")
  });

});