class AddIsDoctorToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :is_doctor, :boolean, default: false
  end
end
