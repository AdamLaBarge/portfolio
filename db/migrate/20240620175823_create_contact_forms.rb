class CreateContactForms < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_forms do |t|
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
