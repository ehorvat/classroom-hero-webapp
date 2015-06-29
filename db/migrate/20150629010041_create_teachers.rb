class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      belongs_to :user
      t.timestamps null: false
    end
  end
end
