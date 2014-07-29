class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :summary
      t.string :invoice_from
      t.string :date
      t.string :invoice_number
      t.string :invoice_to
      t.string :invoice_due
      t.string :purchase_order_number
      t.text :invoice_notes

      t.timestamps
    end
  end
end
