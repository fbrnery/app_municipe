class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :ibge
      t.references :municipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
