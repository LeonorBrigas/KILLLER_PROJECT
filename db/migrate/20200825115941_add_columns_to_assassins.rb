class AddColumnsToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :latitude, :integer
    add_column :assassins, :longitude, :integer
    add_column :assassins, :total_kills, :integer
    add_column :assassins, :has_gun, :boolean
    add_column :assassins, :has_knife, :boolean
    add_column :assassins, :has_candlestick, :boolean
    add_column :assassins, :has_wrench, :boolean
    add_column :assassins, :has_rope, :boolean
    add_column :assassins, :summary, :string
    add_column :assassins, :price, :integer
  end
end
