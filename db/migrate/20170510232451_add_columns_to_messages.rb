class AddColumnsToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :category_id, :integer
  end
end
