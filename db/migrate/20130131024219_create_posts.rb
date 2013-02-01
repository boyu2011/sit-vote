class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :course_number
      t.string :course_name
      t.string :love_reason
      t.integer :vote_count

      t.timestamps
    end
  end
end
