class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :restaurant
      t.string :author
      t.string :content

      t.timestamps null: false
    end
  end
end
