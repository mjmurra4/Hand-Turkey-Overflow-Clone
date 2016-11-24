class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.references :commentable, polymorphic: true, index: true
      t.integer :user_id
      t.timestamps(null:false)
    end
  end
end
