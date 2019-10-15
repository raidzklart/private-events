class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :location
      t.date :date
      t.time :time
      t.integer :host_id

      t.timestamps
    end
  end
end
