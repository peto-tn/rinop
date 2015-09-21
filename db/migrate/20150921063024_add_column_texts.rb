class AddColumnTexts < ActiveRecord::Migration
  def change
    add_column :texts, :user_id, :integer
    add_column :texts, :image_id, :integer
  end
end
