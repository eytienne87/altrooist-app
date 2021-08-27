class AddEmailPhonePhotoToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :email, :string
    add_column :organizations, :phone, :string
    add_column :organizations, :photo_url, :string
  end
end
