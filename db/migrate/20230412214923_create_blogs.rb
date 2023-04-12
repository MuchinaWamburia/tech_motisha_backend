class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :thumbnail
      t.string :category
      t.text :description
      t.text :content
      t.boolean :verification

      t.timestamps
    end
  end
end
