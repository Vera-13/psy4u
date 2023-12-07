class CreateDocLangs < ActiveRecord::Migration[7.1]
  def change
    create_table :doc_langs do |t|
      t.references :language, null: false, foreign_key: true
      t.references :doctor, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
