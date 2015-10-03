class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :examinations_lists, index: true

      t.timestamps

    end
  end
end
