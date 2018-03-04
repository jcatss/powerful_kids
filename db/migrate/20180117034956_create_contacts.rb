class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :theme
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
