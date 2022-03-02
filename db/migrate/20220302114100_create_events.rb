class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :cuisine
      t.boolean :status
      t.integer :price
      t.datetime :event_time
      t.string :address
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
