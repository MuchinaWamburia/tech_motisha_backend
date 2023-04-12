class CreateAudioComments < ActiveRecord::Migration[7.0]
  def change
    create_table :audio_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :audio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
