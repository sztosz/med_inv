class CreateExaminationLists < ActiveRecord::Migration
  def change
    create_table :examination_lists do |t|
      t.integer :month
      t.integer :year
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
