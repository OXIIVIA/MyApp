json.array! @next do |article|
  json.id article.id
  json.title article.title
  json.image article.image
  json.text article.text
  json.artist_id article.artist_id
  json.created_at article.created_at.strftime("%Y/%m/%d")
end