class ChangePhoneNumberToRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :restaurants, :phonenumber, :string
  end


end
