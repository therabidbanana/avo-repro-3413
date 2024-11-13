class AddPosts < ActiveRecord::Migration[7.1]
  def change
    # Only because we're using sqlite here, otherwise we'd use id: :uuid
    create_table :posts, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.string :user_id, null: false
      t.string :title
    end
    add_index :posts, :id, unique: true
    add_index :posts, :user_id
  end
end
