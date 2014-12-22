namespace :seed_rounds do
  desc "Seed the database"
  task seed: :environment do
    1000.times do
      r = Round.create(
        scenerio_1: Faker::Lorem.paragraph(4),
        scenerio_2: Faker::Lorem.paragraph(4),
        author: Faker::Internet.user_name,
        email: Faker:: Internet.email
      )
      r.vote_up
    end
  end
end
