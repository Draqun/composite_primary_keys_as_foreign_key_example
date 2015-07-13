require 'factory_girl_rails'

FactoryGirl.define do
  factory :child do |f|
    f.parent { FactoryGirl.build(:parent) }
    f.grand { FactoryGirl.build(:grand) }
  end
end
