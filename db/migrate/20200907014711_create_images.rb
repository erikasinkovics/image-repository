class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :description
      t.string :file_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
