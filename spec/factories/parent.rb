require 'factory_girl_rails'

FactoryGirl.define do
  factory :parent do |f|
    f.grand { FactoryGirl.build(:grand) }
  end
end
