json.array!(@diaries) do |diary|
  json.start diary.date.strftime("20%y-%m-%d")
  json.end diary.date.strftime("20%y-%m-%d")
  json.color '#819d9c'
  json.rendering 'background'
end