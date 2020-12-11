class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :title
      t.string :traduction_french
      t.string :traduction_malagasy
      t.belongs_to :category , index:true

      t.timestamps
    end
  end
end
