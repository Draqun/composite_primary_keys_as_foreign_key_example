class Parent < ActiveRecord::Base
  self.primary_keys = :id, :grand_id
  belongs_to :grand
  has_many  :childs, class_name: ::Child, dependent: :delete_all
end
