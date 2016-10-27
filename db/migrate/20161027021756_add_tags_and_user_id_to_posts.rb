class AddTagsAndUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tags, :text
    add_reference :posts, :user, index: true
    add_foreign_key :posts, :users
  end
end
