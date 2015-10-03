class CreateExaminationsLists < ActiveRecord::Migration
  def change
    create_table :examinations_lists do |t|
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
