class ContactList < ApplicationRecord
  has_many :contact, :dependent => :destroy, foreign_key: "contact_lists_id"

  accepts_nested_attributes_for :contact, allow_destroy: true

  attribute :contact
end
