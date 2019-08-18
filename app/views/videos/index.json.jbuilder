json.array! @next do |video|
  json.id video.id
  json.title video.title
  json.videoID video.videoID
  json.artist video.artist.name
  json.created_at video.created_at.strftime("%Y/%m/%d")
end