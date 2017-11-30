User.destroy_all

created_users = 0
while created_users < 20
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    )
    created_users += 1 if user.save
end
p "You now have #{User.count} users in your db"



Photo.destroy_all

# photo_list = [
#   [ "Image 1", "https://www.flickr.com/photos/elisfanclub/38015077794/", "user_id.random" ],
#   [ "Image 2", "https://www.flickr.com/photos/elisfanclub/35759444266/", "user_id.random" ],
#   [ "Image 3", "https://www.flickr.com/photos/elisfanclub/28341078843/", "user_id.random" ],
#   [ "Image 4", "https://www.flickr.com/photos/elisfanclub/28852495522/", "user_id.random" ],
#   [ "Image 5", "https://www.flickr.com/photos/elisfanclub/28917308346/", "user_id.random" ],
#   [ "Image 6", "https://www.flickr.com/photos/elisfanclub/26135690730/", "user_id.random" ],
#   [ "Image 7", "https://www.flickr.com/photos/elisfanclub/26316223462/", "user_id.random" ],
#   [ "Image 8", "https://www.flickr.com/photos/elisfanclub/22423431424/", "user_id.random" ],
#   [ "Image 9", "https://www.flickr.com/photos/elisfanclub/22423979304/", "user_id.random" ],
#   [ "Image 10", "https://www.flickr.com/photos/elisfanclub/19978798446/", "user_id.random" ],
#   [ "Image 11", "https://www.flickr.com/photos/elisfanclub/19211659881/", "user_id.random" ],
# ]

50.times do |index|
  Photo.create!(title: Faker::Hipster.sentence,
                  image: 'https://mgtvwfla.files.wordpress.com/2017/11/avocado-rat.jpg',
                  user_id: Faker::Number.between(User.first.id, User.last.id))
end
p "You now have #{Photo.count} comments in your db"



Comment.destroy_all

100.times do
  Comment.create!(text: Faker::Hipster.sentence(1),
                  user_id: Faker::Number.between(User.first.id, User.last.id),
                  photo_id: Faker::Number.between(Photo.first.id, Photo.last.id))
end

# 100.times do
#   random_user = User.all.sample
#   random_photo = Photo.all.sample
#   random_photo.comments.create(
#     text: Faker::Hipster.sentences(1),
#     user_id: random_user.id,
#     photo_id: random_user.id
#     )
# end

p "You now have #{Comment.count} comments in your db"


#
# Question.destroy_all
#
# 10.times do
#   random_user = User.all.sample
#   random_user.questions.create(
#     title: Faker::FamilyGuy.quote,
#     text: Faker::Hipster.sentences(2),
#     rating: Faker::Number.between(1, 100)
#     )
#   end
#
# p "You have created #{Question.count} questions in your db"
#
#
#
#
#
# Answer.destroy_all
#
# 10.times do
#   random_user = User.all.sample
#   random_question = Question.all.sample
#   random_question.answers.create(
#     text: Faker::ChuckNorris.fact,
#     rating: Faker::Number.between(1, 100),
#     user_id: random_user.id
#     )
# end
#
# p "You now have #{Answer.count} answers in your db"
#
#

#
#
# AnswerComment.destroy_all
#
# 25.times do
#   random_user = User.all.sample
#   random_answer = Answer.all.sample
#   random_answer.answer_comments.create(
#     text: Faker::Hipster.sentences(1),
#     user_id: random_user.id
#     )
# end
#
# p "You now have #{AnswerComment.count} answer_comments in your db"
