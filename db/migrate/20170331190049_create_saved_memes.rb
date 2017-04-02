class CreateSavedMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_memes do |t|
      t.string :text
      t.string :image_url

      t.timestamps
    end
  end
end
