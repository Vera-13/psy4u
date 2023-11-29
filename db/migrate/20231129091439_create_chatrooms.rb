class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.references :patient, foreign_key: { to_table: :users }
      t.references :doctor, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
