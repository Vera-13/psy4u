class AddPhoneToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :phone_nr, :string
  end
end
