class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.string :name
      t.integer :book_id
      t.timestamps null: false
    end
    add_index :attendees, :book_id
  end
end
