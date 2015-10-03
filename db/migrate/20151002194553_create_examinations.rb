class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :patient
      t.datetime :date
      t.references :examinations_lists, index: true
      t.references :examination_types, index: true

      t.timestamps
    end
  end
end
