class CreateEstablishments < ActiveRecord::Migration[8.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :default_lang
      t.string :invoice_number_pattern
      t.string :receipt_number_pattern
      t.string :support_email
      t.references :city, null: false, foreign_key: true
      t.references :report_template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
