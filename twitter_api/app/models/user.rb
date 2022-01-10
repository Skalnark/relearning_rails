class User < ApplicationRecord
  validates :username, uniqueness: true

  has_many :twits
  has_and_belongs_to_many :user, foreign_key: :user_id

  accepts_nested_attributes_for :twits, allow_destroy: true

  attribute :twits
  attribute :username, :string
end
