json.array!(@diaries) do |diary|
  json.title '入力済み'
  json.start diary.date.strftime("20%y-%m-%dT10:00:00")
  json.end diary.date.strftime("20%y-%m-%dT12:00:00")
end