class CreateGrands < ActiveRecord::Migration
  def change
    create_table :grands do |t|

      t.timestamps null: false
    end
  end
end
