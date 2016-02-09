class CreateItemmasters < ActiveRecord::Migration
  def change
    create_table :itemmasters do |t|
      t.integer :upc , :limit => 6
      t.string :desc1
      t.string :desc2
      t.string :color
      t.string :size
      t.integer :price

      t.timestamps null: false
    end
  end
end
