$(document).on('turbolinks:load', function() {
  
  function addVideo(video) {
    var html = `<a class="video" data-id="${video.id}" href="/videos/${video.id}">
                  <div class="video__inner">
                    <div class="video__inner__thumnail">
                      <img src="http://img.youtube.com/vi/${video.videoID}/mqdefault.jpg" alt="Mqdefault">
                    </div>
                    <div class="video__inner__details">
                      <p class="video__inner__details__song-title">${video.title}</p>
                      <p class="video__inner__details__artist-name">${video.artist}</p>
                      <p class="video__inner__details__date">${video.created_at}</p>
                    </div>
                  </div>
                </a>`

    $('.videos__videos-box__wrapper').append(html);
  }

  $('.videos__button-box__more-btn').on('click', function() {
    last_video_id = $('.video').last().attr('data-id');
    url = window.location.href;
    $.ajax({
      url: url,
      type: 'GET',
      dataType: 'json',
      data: {id: last_video_id}
    })
    .done(function(videos) {
      var reversedVideos = videos.reverse();
      var slicedvideos = reversedVideos.slice(0, 8);
      $.each(slicedvideos, function(i, video) {
        addVideo(video);
      });
    })
    .fail(function() {
      console.log("error")
    });
  });
});