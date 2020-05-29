json.array!(@diaries) do |diary|
  json.start diary.date.strftime("20%y-%m-%d")
  json.end diary.date.strftime("20%y-%m-%d")
  json.color '#a7d28d'
  json.rendering 'background'
end