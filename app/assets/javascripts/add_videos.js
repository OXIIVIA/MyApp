$(document).on('turbolinks:load', function() {


  $('.videos__button-box__more-btn').on('click', function() {
    last_video_id = $('.video').last().attr('data-id');
    url = window.location.href;
    $.ajax({
      url: url,
      type: 'GET',
      dataType: 'json',
      data: {id: last_video_id}
    })
  });
});