class AddDoOnlineToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :do_online, :boolean, default: true
  end
end
