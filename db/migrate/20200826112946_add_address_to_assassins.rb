class AddAddressToAssassins < ActiveRecord::Migration[6.0]
  def change
    add_column :assassins, :address, :string
  end
end
