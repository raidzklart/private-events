class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.references :event, foreign_key: true
      t.integer :guest_id

      t.timestamps
    end
  end
end
