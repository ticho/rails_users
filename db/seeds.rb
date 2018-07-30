# frozen_string_literal: true

require 'faker'

10.times do
  User.create(
    username: Faker::GameOfThrones.character,
    bio: Faker::GameOfThrones.quote
  )
end
