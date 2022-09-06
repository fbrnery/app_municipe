json.extract! endereco, :id, :cep, :logradouro, :complemento, :bairro, :cidade, :uf, :ibge, :municipe_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
