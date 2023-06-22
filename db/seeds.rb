require "faker"

JoinTagFact.destroy_all
Tag.destroy_all
Comment.destroy_all
Fact.destroy_all
User.destroy_all

5.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: "123456",
    username: Faker::FunnyName.name.truncate(1))
end

5.times do
  Fact.create!(
    title: Faker::FunnyName.name.truncate(20),
    content: Faker::Lorem.paragraph(sentence_count: rand(3..5)),
    rating: rand(0..5),
    user_id: rand(User.first.id..User.last.id))
end

5.times do
  Comment.create!(
    content: Faker::Lorem.paragraph(sentence_count: rand(3..5)),
    fact_id: rand(Fact.first.id..Fact.last.id),
    sender_id: rand(User.first.id..User.last.id),
    receiver_id: rand(User.first.id..User.last.id))
end

5.times do
  Tag.create!(
    title: Faker::Verb.base)
end

5.times do
  JoinTagFact.create!(
    fact_id: rand(Fact.first.id..Fact.last.id),
    tag_id: rand(Tag.first.id..Tag.last.id)
  )
end
