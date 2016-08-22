class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.boolean :is_public
      t.integer :quality
      t.timestamps
    end
  end
end
