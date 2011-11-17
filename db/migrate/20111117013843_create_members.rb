class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.boolean :cleaning_duty_target

      t.timestamps
    end
  end
end
