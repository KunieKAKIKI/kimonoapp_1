class CreateCoordinates < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinates do |t|
      t.string :title
      t.text :image
      t.text :content

      t.timestamps
    end
  end
end
