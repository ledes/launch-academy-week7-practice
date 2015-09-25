class CreateCellphones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :year, null: false
      t.string :battery_life, null: false
      t.string :description
      t.belongs_to :manufacturer, null: false
    end
  end
end
