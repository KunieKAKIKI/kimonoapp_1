class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :image
      t.text :content

      t.timestamps
    end
  end
end
