class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.text :video
      t.text :describtion

      t.timestamps
    end
  end
end
