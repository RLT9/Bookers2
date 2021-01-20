class CreatePostBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :post_books do |t|
      t.text :book_name
      t.string :book_id
      t.text :opinion
      t.integer :user_id

      t.timestamps
    end
  end
end