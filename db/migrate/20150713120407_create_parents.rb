class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :grand_id
      t.timestamps null: false
    end

    execute "ALTER TABLE parents DROP CONSTRAINT parents_pkey;"
    execute "ALTER TABLE parents ADD CONSTRAINT parents_pkey PRIMARY KEY (id, grand_id);"
    execute "ALTER TABLE parents ADD FOREIGN KEY (grand_id) REFERENCES grands(id);"
  end
end
