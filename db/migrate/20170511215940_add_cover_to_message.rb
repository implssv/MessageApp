class AddCoverToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :cover, :string
  end
end
