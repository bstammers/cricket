class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :state

      t.timestamps
    end
  end
end
