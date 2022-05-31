class CreateComics < ActiveRecord::Migration[7.0]
  def change
    create_table :comics do |t|
      t.string :name, null: false
      t.string :illustration
      t.string :house
      t.string :serie
      t.boolean :collector, default: false
      t.decimal :price
      t.datetime :date

      t.timestamps
    end
  end
end
