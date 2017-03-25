class CreateRawMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :raw_memes do |t|
      t.integer :type
      t.string :top
      t.string :bottom

      t.timestamps
    end
  end
end
