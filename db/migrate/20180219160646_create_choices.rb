class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.integer :item_id
      t.integer :coordinate_id

      t.timestamps
    end
  end
end
