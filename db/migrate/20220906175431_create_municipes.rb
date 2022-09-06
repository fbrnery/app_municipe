class CreateMunicipes < ActiveRecord::Migration[6.1]
  def change
    create_table :municipes do |t|
      t.string :nome
      t.string :cpf
      t.string :cns
      t.string :email
      t.datetime :nascimento
      t.string :telefone
      t.string :image_url
      t.boolean :status

      t.timestamps
    end
  end
end
