class CreateExaminationTypes < ActiveRecord::Migration
  def change
    create_table :examination_types do |t|
      t.string :name
      t.references :examination, index: true

      t.timestamps
    end
  end
end
