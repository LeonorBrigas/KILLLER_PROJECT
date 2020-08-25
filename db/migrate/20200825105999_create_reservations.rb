class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :assassin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
