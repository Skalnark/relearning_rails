class Twit < ApplicationRecord
    validates :content, presence: true
    validates :user_id, presence: true

    has_many :twit, class_name: "Twit", foreign_key: "response_to"
    has_one :twit
    belongs_to :user

    accepts_nested_attributes_for :twit, allow_destroy: false
end
