namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    # [Category, Product, Person].each(&:delete_all)

    #   Product.populate 4..200 do |product|
    #     product.category_id = category.id
    #     product.name = Populator.words(1..5).titleize
    #     product.description = Populator.sentences(2..10)
    #     product.price = [4.99, 19.95, 100]
    #     product.created_at = 2.years.ago..Time.now
    #   end
    # end
    
    Product.populate 200 do |person|
      product.name    = Faker::Commerce.product_name
      product.description = Faker::Lorem.sentences
      product.price_in_cents   = [499,799,899,999,1299,1499,1799,1999,2299,2499,2799,2999,3299,3499,3999,4499,4999,5999,6999,7999,8999,9999].sample
      product.created_at   = 6.months.ago..Time.now
      product.updated_at  = Time.now
    end
  end
end
