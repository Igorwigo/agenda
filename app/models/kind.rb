class Kind < ApplicationRecord
    has_many :contact_kinds #possui muitos < tabela intermediaria>
    has_many : contacts, through: :contact_kinds # possui muitos contatos, através de <tabela intermediaria>


end
