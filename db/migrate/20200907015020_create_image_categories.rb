class CreateImageCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :image_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :image, null: false, foreign_key: true

      t.timestamps
    end
  end
end
