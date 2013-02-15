class Remedio < ActiveRecord::Base
  attr_accessible :composicao, :nome, :preco, :entrega, :receita
end
