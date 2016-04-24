class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :draft
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
