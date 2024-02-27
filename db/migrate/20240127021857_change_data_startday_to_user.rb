class ChangeDataStartdayToUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :startday, :date
  end
end

