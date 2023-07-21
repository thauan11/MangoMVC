class CreateMangos < ActiveRecord::Migration[7.0]
  def change
    create_table :mangos do |t|
      t.string :descricao
      t.float :valor
      t.string :banco

      t.timestamps
    end
  end
end
