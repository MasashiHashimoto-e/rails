class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :title
      t.datetime :startday
      t.datetime :finishday
      t.string :oneday

      t.timestamps
    end
  end
end
