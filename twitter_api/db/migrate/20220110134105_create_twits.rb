class CreateTwits < ActiveRecord::Migration[7.0]
  def change
    
    create_table :users do |t|
      t.string :name
      t.string :username
      t.timestamps
    end

    create_table :twits do |t|
      t.belongs_to :user, foreign_key: "user_id"
      t.string :content
      t.integer :response_to
      t.timestamps
    end

  end
end
