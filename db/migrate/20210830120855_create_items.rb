class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :image_url
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
