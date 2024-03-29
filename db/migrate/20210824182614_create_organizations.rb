class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
