class AddPriceSessionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :price_session, :integer
  end
end
