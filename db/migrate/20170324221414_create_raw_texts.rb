class CreateRawTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :raw_texts do |t|

      t.timestamps
    end
  end
end
