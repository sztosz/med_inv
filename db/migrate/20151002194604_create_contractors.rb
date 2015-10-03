class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :street
      t.string :zip_code
      t.string :city
      t.text :nip

      t.timestamps
    end
  end
end
