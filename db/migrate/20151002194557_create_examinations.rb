class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :patient
      t.datetime :date
      t.references :examination_list, index: true

      t.timestamps
    end
  end
end
