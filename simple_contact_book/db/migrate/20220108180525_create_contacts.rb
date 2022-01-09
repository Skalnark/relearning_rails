class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_lists do |t|
      t.string :list_name
    end

    create_table :contacts do |t|
      t.belongs_to :contact_lists
      t.string :name
      t.string :phone_number
      t.string :phone_type
    end
  end
end
