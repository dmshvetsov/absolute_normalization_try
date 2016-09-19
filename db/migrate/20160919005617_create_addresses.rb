class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.references :street, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
