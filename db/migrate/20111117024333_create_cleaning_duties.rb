class CreateCleaningDuties < ActiveRecord::Migration
  def change
    create_table :cleaning_duties do |t|
      t.string :dust1
      t.string :dust2
      t.string :cleaner1
      t.string :cleaner2
      t.string :table1
      t.string :table2
      t.date :start_day
      t.date :end_day

      t.timestamps
    end
  end
end
