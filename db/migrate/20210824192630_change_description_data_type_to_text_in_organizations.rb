class ChangeDescriptionDataTypeToTextInOrganizations < ActiveRecord::Migration[6.0]
  def change
    change_column :organizations, :description, :text
  end
end
