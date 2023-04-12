class CreateAudios < ActiveRecord::Migration[7.0]
  def change
    create_table :audios do |t|
      t.string :title
      t.string :thumbnail
      t.string :category
      t.text :description
      t.boolean :verification

      t.timestamps
    end
  end
end
