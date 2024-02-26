class ChangeDataFinishdayToUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :finishday, :date
  end
end
