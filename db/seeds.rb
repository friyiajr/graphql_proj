require 'faker'

2.times do
  author = Author.create(
    name: Faker::Name.name,
  )
    2.times do
      author.todos << Todo.create(
        title: Faker::JapaneseMedia::DragonBall.character,
        completed: false,
        message: Faker::JapaneseMedia::DragonBall.planet,
    )
   end
end
