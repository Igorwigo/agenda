class Address < ApplicationRecord
  belongs_to :contact, require: :false #require false é só para fazer funcionar

end
