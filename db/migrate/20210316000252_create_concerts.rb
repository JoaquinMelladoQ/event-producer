class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.belongs_to :band, foreign_key: true
      t.integer :attendance, default: 0
      t.integer :duration, default: 0
      t.date :date

      t.timestamps
    end
  end
end
