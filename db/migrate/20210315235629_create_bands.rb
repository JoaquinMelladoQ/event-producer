class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :members, default: 1
      t.date :debut
      t.integer :band_sort, default: 0

      t.timestamps
    end
  end
end
