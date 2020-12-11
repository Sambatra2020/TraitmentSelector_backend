class CreateListTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :list_treatments do |t|
      t.belongs_to :patient
      t.belongs_to :treatment
      t.timestamps
    end
  end
end
