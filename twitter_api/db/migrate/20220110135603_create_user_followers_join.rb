class CreateUserFollowersJoin < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.belongs_to :user, foreign_key: "users_id"
      t.integer :follower_id
    end
  end
end
