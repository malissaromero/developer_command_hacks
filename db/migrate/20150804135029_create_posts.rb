class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.string :command
      t.string :description
      t.references :user, index: true, foreign_key: true
    end
  end
end
