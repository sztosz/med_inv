class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :examinations_lists, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
