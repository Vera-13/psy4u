class RenamePostalCodeFromUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :postal_code, :address
    change_column :users, :address, :string
  end
end
