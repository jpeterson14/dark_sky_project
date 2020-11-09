class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :post
      t.references :visitor, null: false, foreign_key: true
      t.references :dark_sky_park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
