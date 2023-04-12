class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :thumbnail
      t.string :video
      t.string :category
      t.text :description
      t.boolean :verification

      t.timestamps
    end
  end
end
