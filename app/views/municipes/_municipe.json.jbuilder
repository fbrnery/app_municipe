json.extract! municipe, :id, :nome, :cpf, :cns, :email, :nascimento, :telefone, :image_url, :status, :created_at, :updated_at
json.url municipe_url(municipe, format: :json)
