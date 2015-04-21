class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :bookID
      t.string :title
      t.string :author
      t.string :publisher
      t.text :details
      t.string :location

      t.timestamps null: false
    end
  end
end
