class CreateAssassins < ActiveRecord::Migration[6.0]
  def change
    create_table :assassins do |t|
      t.string :first_name
      t.string :last_name
      t.integer :latitude
      t.integer :longitude
      t.integer :total_kills
      t.boolean :has_gun
      t.boolean :has_knife
      t.boolean :has_candlestick
      t.boolean :has_wrenc
      t.boolean :has_rope
      t.text :summary
      t.integer :price

      t.timestamps
    end
  end
end
