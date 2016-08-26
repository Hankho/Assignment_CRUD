class CreateReaders < ActiveRecord::Migration[5.0]
  def change
    create_table :readers do |t|
     t.string :name
     t.integer :book_id
     t.timestamps
    end
    add_index :readers, :book_id
  end
end
