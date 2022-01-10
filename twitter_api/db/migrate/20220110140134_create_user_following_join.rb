class CreateUserFollowingJoin < ActiveRecord::Migration[7.0]
  def change
    create_table :following do |t|
      t.belongs_to :user, foreign_key: "users_id"
      t.integer :following_id
    end
  end
end
