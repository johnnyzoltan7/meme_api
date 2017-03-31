class CreateSavedMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_memes do |t|

      t.timestamps
    end
  end
end
