class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :labelle_categorie
      t.string :categorie_french
      t.string :categorie_malagasy
      t.timestamps
    end
  end
end
