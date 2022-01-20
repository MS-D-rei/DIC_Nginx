30.times do
  title = Faker::Lorem.sentence(word_count: 2)
  content = Faker::Lorem.sentence(word_count: 5)
  Blog.create!(
    title: title,
    content: content
  )
end
