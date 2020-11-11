class CreateDarkSkyParks < ActiveRecord::Migration[6.0]
    def change
        create_table :dark_sky_parks do |t|
            t.string :name
            t.text :description
            t.string :img_url
            t.string :city
            t.string :state

            t.timestamps
        end
    end
end
