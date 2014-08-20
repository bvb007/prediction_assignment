class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :location
      t.string :logo
      
      t.timestamps
  	end

    create_table :clubs_leagues, id: false do |t|
      t.belongs_to :club
      t.belongs_to :league
    end
  end
end