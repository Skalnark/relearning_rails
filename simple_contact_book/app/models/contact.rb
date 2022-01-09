class Contact < ApplicationRecord
  belongs_to :contact_list, :foreign_key => :contact_lists_id
end
