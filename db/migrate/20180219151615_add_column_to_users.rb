class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :items_status, :boolean
    add_column :users, :dressing_status, :boolean
    add_column :users, :teaching_status, :boolean
    add_column :users, :profile, :text
    add_column :users, :image, :text
  end
end
