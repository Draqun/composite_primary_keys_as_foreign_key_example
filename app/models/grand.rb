class Grand < ActiveRecord::Base
  has_many :parents, dependent: :delete_all
end
