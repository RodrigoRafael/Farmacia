class CreateRemedios < ActiveRecord::Migration
  def change
    create_table :remedios do |t|
      t.string :nome
      t.float :preco
      t.text :composicao
      t.date :entrega
      t.string :receita

      t.timestamps
    end
  end
end
