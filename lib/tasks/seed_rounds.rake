namespace :seed_rounds do
  desc "Seed the database"
  task seed: :environment do
    1000.times do
      Round.create(
        scenerio_1: Faker::Lorem.paragraph(4),
        scenerio_2: Faker::Lorem.paragraph(4),
        author: Faker::Internet.user_name
      )
    end
  end
end
