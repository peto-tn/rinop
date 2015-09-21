class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :body
      t.integer :favorite

      t.timestamps
    end
  end
end
