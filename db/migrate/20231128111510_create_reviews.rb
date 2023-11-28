class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.float :rating
      t.references :patient, foreign_key: { to_table: :users }
      t.references :doctor, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
