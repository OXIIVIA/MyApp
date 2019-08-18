json.array! @next do |video|
  json.id video.id
  json.title video.title
  json.videoID video.videoID
  json.artist_id video.artist_id
  json.created_at video.created_at.strftime("%Y/%m/%d")
end