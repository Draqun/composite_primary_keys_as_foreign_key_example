class Child < ActiveRecord::Base
  self.primary_keys = :id, :parent_id, :grand_id
  belongs_to :parent, foreign_key: [:parent_id, :grand_id]
  belongs_to :grand
end
