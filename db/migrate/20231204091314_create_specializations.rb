class CreateSpecializations < ActiveRecord::Migration[7.1]
  def change
    create_table :specializations do |t|
      t.references :doctor, foreign_key: { to_table: :users }
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
