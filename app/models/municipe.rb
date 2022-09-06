class Municipe < ApplicationRecord
    has_many :enderecos, dependent: :delete_all

    validates :nome, presence: true
    validates :cpf, presence: true
    validates :cns, presence: true
    validates :email, presence: true
    validates :nascimento, presence: true
    validates :telefone, presence: true
    validates :image_url, presence: true
    validates :status, presence: true
end
