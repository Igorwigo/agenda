class Phone < ApplicationRecord
  belongs_to :contact, require: :false
end
