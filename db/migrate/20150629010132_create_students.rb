class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :total_coin
      t.integer :current_coins
      t.integer :lvl
      t.integer :progress
      t.integer :lvl_up_amount

      t.timestamps null: false
    end
  end
end
