class AddDescriptionColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :description, :text
  end
end
