$(document).on('turbolinks:load', function() {

  function addArticle(article) {
    var html = `<a class="article" data-id="${article.id}" href="/articles/${article.id}">
                  <div class="article__inner">
                    <div class="article__inner__image">
                      <img src="${article.image}">
                    </div>
                    <div class="article__inner__text-box">
                      <h2 class="article__inner__text-box__title">${article.title}</h2>
                      <p class="article__inner__text-box__date">${article.created_at}</p>
                    </div>
                  </div>
                </a>`
    $('.articles__articles-box__wrapper').append(html);
  }


  $('.articles__button-box__back-btn').on('click', function() {
    last_article_id = $('.article').last().attr('data-id');
    url = window.location.href;
    $.ajax({
      url: "/",
      type: 'GET',
      dataType: 'json',
      data: {id: last_article_id}
    })
    .done(function(articles) {
      var reversedArticles = articles.reverse();
      $.each(reversedArticles, function(i, article) {
        addArticle(article);
      });
    })
    .fail(function() {
      console.log("error");
    });
  });
});