class CreateQohs < ActiveRecord::Migration
  def change
    create_table :qohs do |t|
      t.integer :upc, :limit => 6
      t.integer :qoh

      t.timestamps null: false
    end
  end
end
