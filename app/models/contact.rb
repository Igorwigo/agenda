class Contact < ApplicationRecord
    has_many :phones, dependent: :destroy #possui muitos telefones
    has_one :address,  dependent: :destroy #possui um endereço

    has_many :contact_kinds #contact possui muitos < tabela intermediaria>
    has_many :kinds, through: :contact_kinds # contact possui muitos kinds, através de <tabela intermediaria>

    accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: :true
    accepts_nested_attributes_for :address #informa que o formulario de  contact aceita atributos aninhados de address
end