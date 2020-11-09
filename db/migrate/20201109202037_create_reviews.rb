class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :visitor, null: false, foreign_key: true
      t.references :dark_sky_park, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
