class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.references :event_type, foreign_key: true
      t.datetime :datetime

      t.timestamps
    end
  end
end
