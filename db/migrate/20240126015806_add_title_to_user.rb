class AddTitleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :memo, :string
  end
end

