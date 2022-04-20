class Contact < ApplicationRecord
    has_many : phones #possui muitos telefones
    has_one :adress #possui um endereço

    has_many :contact_kinds #contact possui muitos < tabela intermediaria>
    has_many : kinds, through: :contact_kinds # contact possui muitos kinds, através de <tabela intermediaria>
end
