class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.text :info
      t.text :image

      t.timestamps
    end
  end
end
