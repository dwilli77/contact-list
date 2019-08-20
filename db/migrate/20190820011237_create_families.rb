class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :kid
      t.string :last_name
      t.string :parent_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
