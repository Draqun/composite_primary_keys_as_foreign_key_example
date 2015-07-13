class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :grand_id
      t.integer :parent_id

      t.timestamps null: false
    end

    execute "ALTER TABLE children DROP CONSTRAINT children_pkey;"
    execute "ALTER TABLE children ADD CONSTRAINT children_pkey PRIMARY KEY (id, grand_id, parent_id);"
    execute "ALTER TABLE children ADD FOREIGN KEY (parent_id, grand_id) REFERENCES parents(id, grand_id);"
    execute "ALTER TABLE children ADD FOREIGN KEY (grand_id) REFERENCES grands(id);"
  end
end
