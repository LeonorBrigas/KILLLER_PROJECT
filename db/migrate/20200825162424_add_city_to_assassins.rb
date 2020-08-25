class AddCityToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :city, :string
  end
end
