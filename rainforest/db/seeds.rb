

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 20.times do |i|

# User.create!({
#   email: Faker::Internet.email,
#   name: Faker::Name.name,
#   password: "test",
#   password_confirmation: "test"
#   }
# )
# end

# # k = [499,799,899,999,1299,1499,1799,1999,2299,2499,2799,2999,3299,3499,3999,4499,4999,5999,6999,7999,8999,9999]


200.times do |i|
# j = k.sample
Product.create!(
  name: Faker::Commerce.product_name,
  description: Faker::Lorem.sentence,
  price_in_cents: '9995',
  created_at: 6.months.ago..Time.now,
  updated_at: Time.now
)
end

# require 'faker'

# namespace :db do
#   desc "Fill database with sample data"
#   task :populate => :environment do
#     # Rake::Task['db:reset'].invoke
#     200.times do |n|
#       name  = Faker::Commerce.product_name
#       description = Faker::Lorem.sentences
#       price = [499,799,899,999,1299,1499,1799,1999,2299,2499,2799,2999,3299,3499,3999,4499,4999,5999,6999,7999,8999,9999].sample
#       created = Time.now
#       updated = Time.now
#       Product.create!(:name => name,
#                     :description => description,
#                     :price_in_cents => price,
#                     :created_at => created,
#                     :updated_at => updated)
#     end
#   end
# end